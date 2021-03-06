(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2018 Hongwei Xi, ATS Trustful Software, Inc.
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
// Author: Hongwei Xi
// Start Time: October, 2018
// Authoremail: gmhwxiATgmailDOTcom
//
(* ****** ****** *)

typedef sik = sint_k
typedef uik = uint_k

typedef slik = slint_k
typedef ulik = ulint_k

typedef ssik = ssize_k
typedef usik = usize_k

typedef sllik = sllint_k
typedef ullik = ullint_k

(* ****** ****** *)
(*
** for generics
*)
(* ****** ****** *)

#staload "./../SATS/gint.sats"

(* ****** ****** *)

impltmp
g_i<sint>(i) = i
impltmp
g_u<uint>(u) = u

(* ****** ****** *)

impltmp
g_lt<sint> = gint_lt_sint_sint
impltmp
g_gt<sint> = gint_gt_sint_sint
impltmp
g_eq<sint> = gint_eq_sint_sint
impltmp
g_lte<sint> = gint_lte_sint_sint
impltmp
g_gte<sint> = gint_gte_sint_sint
impltmp
g_neq<sint> = gint_neq_sint_sint

(* ****** ****** *)

impltmp
g_cmp<sint> = gint_cmp_sint_sint

(* ****** ****** *)

impltmp
g_add<sint> = gint_add_sint_sint
impltmp
g_sub<sint> = gint_sub_sint_sint
impltmp
g_mul<sint> = gint_mul_sint_sint
impltmp
g_div<sint> = gint_div_sint_sint

(* ****** ****** *)

impltmp
gint_lt<sik> = gint_lt_sint_sint
impltmp
gint_gt<sik> = gint_gt_sint_sint
impltmp
gint_eq<sik> = gint_eq_sint_sint
impltmp
gint_lte<sik> = gint_lte_sint_sint
impltmp
gint_gte<sik> = gint_gte_sint_sint
impltmp
gint_neq<sik> = gint_neq_sint_sint

(* ****** ****** *)
//
impltmp
gint_add<sik> = gint_add_sint_sint
impltmp
gint_sub<sik> = gint_sub_sint_sint
impltmp
gint_mul<sik> = gint_mul_sint_sint
impltmp
gint_div<sik> = gint_div_sint_sint
impltmp
gint_mod<sik> = gint_mod_sint_sint
//
(* ****** ****** *)
//
// For gseq-operations
//
(* ****** ****** *)

impltmp<>
sint_nil?(xs) = (xs <= 0)
impltmp<>
sint_cons?(xs) = (xs >= 1)

(* ****** ****** *)

impltmp<>
sint_forall
  (xs) =
( loop(0) ) where
{
fun
loop(x0: sint): bool =
if
(x0 < xs)
then
(
if
forall$test<x0,xs>(x0)
then loop(succ(x0)) else false
) (* then *)
else true // end of [else]
}

(* ****** ****** *)
//
impltmp<>
sint_rforall
  (xs) =
( loop(xs) ) where
{
fun
loop(xs: sint): bool =
if
(xs > 0)
then
let
val xs = pred(xs)
in
if
rforall$test<x0,xs>(xs) then loop(xs) else false
end
else true // end of [else]
}
//
(* ****** ****** *)

local
//
typedef x0 = sint
typedef xs = sint
//
in(*in-of-local*)

(* ****** ****** *)
//
impltmp
gseq_nil? <x0,xs> = sint_nil? <>
impltmp
gseq_cons? <x0,xs> = sint_cons? <>
//
(* ****** ****** *)
//
impltmp
gseq_forall<x0,xs> = sint_forall<>
impltmp
gseq_rforall<x0,xs> = sint_rforall<>
//
(* ****** ****** *)

end // end of [local]

(* ****** ****** *)

(* end of [gint.dats] *)
