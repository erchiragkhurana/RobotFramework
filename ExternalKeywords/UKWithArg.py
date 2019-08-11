import os

def create_folder(foldername):
    os.mkdir("E:\\"+foldername)

def create_subfolder(subfoldername):
    os.mkdir("E:\\TestingWorldIndia\\"+subfoldername)

def concatenate_two_values(val1,val2):
    val3 = val1+" " + val2
    return val3