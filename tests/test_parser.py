from arithmp.parser import Parser

def test_add():
    parse= Parser().parse;
    assert parse("3+4")==7.0
    assert parse("1+1*2")==3.0 

def test_grostruc():
    parse= Parser().parse
    assert parse("((2^3 + (-3^2))/0.1)%4")== 2.0


