#!/usr/bin/env sh

fn_start (){ fun1; }
fun1 (){ echo 'fun1 executed'; } 
fn_start 
