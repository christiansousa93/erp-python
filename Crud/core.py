import sys
import os
import configparser
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

class Conexao(object):
    def __init__(self, DbHost='', DbName='', DbUser='', DbPassword='', engine='', Base='', Session=''):
        self.DbHost = DbHost
        self.DbName = DbName
        self.DbUser = DbUser
        self.DbPassword = DbPassword
        self.engine = engine
        self.Base = Base
        self.Session = Session

        # caminho absoluto config.ini
        path = os.path.abspath(os.path.dirname(sys.argv[0]))
        config = configparser.ConfigParser()
        config.sections()

        # buscando dados config.ini
        if config.read(os.path.join(path, 'config.ini')):
            self.DbHost = config['DEFAULT']['DbHost']
            self.DbName = config['DEFAULT']['DbName']
            self.DbUser = config['DEFAULT']['DbUser']
            self.DbPassword = config['DEFAULT']['DbPassword']
        else:
            DbHost = ''
            DbName = ''
            DbUser = ''
            DbPassword = ''

        # eng8ne
        self.engine = create_engine(
            'mysql+mysqlconnector://{}:{}@{}/{}?charset=utf8'
            .format(self.DbUser, self.DbPassword,
                    self.DbHost, self.DbName),
            echo=False)

        # criando sessao
        self.Session = sessionmaker(bind=self.engine)

Base = declarative_base()
