import numpy as np

def generate(n, xmin, alpha):
    """
    Generate/Draw powerlaw samples for Monte-Carlo process, powerlaw analysis, etc.
    :param n: number of samples to be generated
    :param xmin: xmin of the population
    :param alpha: alpha parameter of the population
    """
    s = []
    for _ in range(n):
        s.append(xmin*((1-np.random.uniform(0,1))**(1/(1-alpha))))
    return s

def getCumulative(n, x, xmin, alpha):
    """
    Get CDF of powerlaw at x
    :param n: number of samples to be generated
    :param x: x at which CDF needs to be calculated
    :param xmin: xmin of the population
    :param alpha: alpha parameter of the population
    """
    return (1-((x/xmin)**(1-alpha)))