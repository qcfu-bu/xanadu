(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2019 Hongwei Xi, ATS Trustful Software, Inc.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of  the GNU GENERAL PUBLIC LICENSE (GPL) as published by the
** Free Software Foundation; either version 3, or (at  your  option)  any
** later version.
** 
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
** 
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)
//
// For generic numbers
//
(* ****** ****** *)
//
// Author: Hongwei Xi
// Start Time: June, 2019
// Authoremail: gmhwxiATgmailDOTcom
//
(* ****** ****** *)

fun
<a:vtype>
gl_0((*void*)): (a)
fun
<a:vtype>
gl_1((*void*)): (a)
fun
<a:vtype>
gl_2((*void*)): (a)

(* ****** ****** *)

fun
<a:vtype>
gl_add00(x: a, y: a): a
fun
<a:vtype>
gl_sub00(x: a, y: a): a

(* ****** ****** *)

fun
<a:vtype>
gl_mul00(x: a, y: a): a
fun
<a:vtype>
gl_div00(x: a, y: a): a
fun
<a:vtype>
gl_mod00(x: a, y: a): a

(* ****** ****** *)

(* end of [gnum_vt.sats] *)
