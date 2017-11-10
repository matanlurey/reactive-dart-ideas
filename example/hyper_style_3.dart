// Copyright 2017, Google Inc.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

void main() {
  h('div', [
    h('h1', [text('Hello World')]),
    text('Welcome "User"!'),
    h('button', [
      attr('disabled'),
      text('OK'),
    ]),
  ]);
}

// Assumes no changes to the language.
abstract class VNode {}
abstract class VAttr implements VNode {}
abstract class VDom implements VNode {}

external VDom h(String name, [List<VNode> children]);
external VNode text(String text);
external VNode attr(String text, [Object value]);
