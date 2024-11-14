#! /bin/user/python3
import logging as log
from pythonjsonlogger import jsonlogger
handler = None
logger = None


def init_logger(file):
	global handler, logger
	handler = log.FileHandler(file)
	format_str = '%(levelname)s%(asctime)s%(filename)s%(funcName)s%(lineno)d%(message)'
	formatter = jsonlogger.JsonFormatter(format_str)
	handler.setFormatter(formatter)
	logger = log.getLogger(__name__)
	logger.addHandler(handler)
	logger.setLevel(log.DEBUG)
	return logger


def stop_logger():
	logger.removeHandler(handler)
	handler.close()
