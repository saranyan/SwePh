// fastadd/fastadd.c
#include "ruby.h"
static VALUE rb_cFastadd;
static VALUE rb_fastadd_add_one(int argc, VALUE *argv, VALUE self)
{
  int n = NUM2INT(rb_funcall(self, rb_intern("n"), 0));
  return INT2NUM(n + 1);
}
void Init_fastadd()
{
  rb_cFastadd = rb_define_class("Fastadd", rb_cObject);
  rb_define_method(rb_cFastadd, "add_one", rb_fastadd_add_one, -1);
}
