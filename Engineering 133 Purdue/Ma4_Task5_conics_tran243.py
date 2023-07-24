#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
===============================================================================
ENGR 13300 Fall 2021

Program Description
   This program will output images of a circle, ellipse, hyperbola and parabola

Assignment Information
    Assignment:     e.g. Individual HW12 - MA4 
    Author:         Gia Bao Tran, tran243@purdue.edu
    Team ID:        LC1 - 24 

Contributor: None
    My contributor(s) helped me:
    [  ] understand the assignment expectations without
        telling me how they will approach it.
    [  ] understand different ways to think about a solution
        without helping me plan my solution.
    [  ] think through the meaning of a specific error or
        bug present in my code without looking at my code.
    Note that if you helped somebody else with their code, you
    have to list that person as a contributor here as well.
    
ACADEMIC INTEGRITY STATEMENT
I have not used source code obtained from any other unauthorized
source, either modified or unmodified. Neither have I provided
access to my code to another. The project I am submitting
is my own original work.
===============================================================================
"""
import matplotlib.pyplot as plt 
import numpy as np

n = 100  
theta = np.linspace(0,2*np.pi,n+1)
#global variables 

def circle():#function for circle
    r = 5
    h = 2
    k = -3
    x = r*np.cos(theta) + h
    y = r*np.sin(theta) + k
    return [x,y]

def parabola(): #function for parabola
    x = np.linspace(-8,8,100)
    y = 0.1*(x**2)
    return [x,y]

def ellipse(): #function for ellipse
    a = 15
    b = 6
    x = a*np.cos(theta)
    y = b*np.sin(theta)
    return [x,y]

def hyperbola(): #function for hyperbola
    a = 2
    b = 1
    x = np.linspace(-10,10,100)
    x2 = x**2
    y = ((1+(x2/a**2))*b**2)**(1/2)
    y1 = -y
    return [x,y,y1]

def main():
    c = circle()
    p = parabola() #call each function
    e = ellipse()
    h = hyperbola()
    fig,((ax1,ax2),(ax3,ax4)) = plt.subplots(2,2) #create subplots
    fig.suptitle("Four Types of Conics") #title
    
    ax1.plot(c[0],c[1]) #plot using arrays returned from function
    ax1.title.set_text('Circle') 
    ax1.grid()#set grid
    ax1.set_xlabel("X-axis") #set axis
    ax1.set_ylabel("Y-axis")
    
    ax2.plot(p[0],p[1])#plot using arrays returned from function
    ax2.title.set_text('Parabola')
    ax2.grid()#set grid
    ax2.set_xlabel("X-axis")#set axis
    ax2.set_ylabel("Y-axis")
    
    ax3.plot(e[0],e[1])#plot using arrays returned from function
    ax3.title.set_text('Ellipse')
    ax3.grid()#set grid
    ax3.set_xlabel("X-axis")#set axis
    ax3.set_ylabel("Y-axis")
    
    ax4.plot(h[0],h[1],h[0],h[2])#plot using arrays returned from function
    ax4.title.set_text('Hyperbola')
    ax4.grid()#set grid
    ax4.set_xlabel("X-axis")#set axis
    ax4.set_ylabel("Y-axis")
    
    
    plt.show() #show the plots
    
if __name__ == "__main__":
    main()