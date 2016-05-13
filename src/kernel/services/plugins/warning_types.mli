(**************************************************************************)
(*                                                                        *)
(*                        OCamlPro Typerex                                *)
(*                                                                        *)
(*   Copyright OCamlPro 2011-2016. All rights reserved.                   *)
(*   This file is distributed under the terms of the GPL v3.0             *)
(*   (GNU General Public Licence version 3.0).                            *)
(*                                                                        *)
(*     Contact: <typerex@ocamlpro.com> (http://www.ocamlpro.com/)         *)
(*                                                                        *)
(*  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,       *)
(*  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES       *)
(*  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND              *)
(*  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS   *)
(*  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN    *)
(*  ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN     *)
(*  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE      *)
(*  SOFTWARE.                                                             *)
(**************************************************************************)

(** [kind] is the category of the warning. A warning can be about the code, a
    typography (for example the line length), interface, metrics and custom. *)
type kind =
  | Code
  | Typo
  | Interface
  | Metrics
  | Custom of string

and kinds = kind list

type warning = {
  loc : Location.t;    (* The location of the warning *)
  instance : warning_instance;
  output: string;
}

and warning_instance = {
  id : int;            (* Warning number *)
  decl : warning_declaration
}

and warning_declaration = {
  kinds : kinds;       (* Warning kinds *)
  short_name : string; (* A short name to identify a warning *)
  message : string;    (* The displayed message *)
}
