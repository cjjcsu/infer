(*
 * Copyright (c) 2016 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

open! IStd

type t [@@deriving compare]

val make : CallSite.t -> t

val site : t -> CallSite.t

module Set : PrettyPrintable.PPSet with type elt = t
