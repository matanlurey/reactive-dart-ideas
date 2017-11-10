// Copyright 2017, Google Inc.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

void main() {
  h('div')([
    h('h1')([text('Hello World')]),
    text('Welcome "User"!'),
    h('button', {'disabled': true})([
      text('OK'),
    ]),
  ]);
}

abstract class VNode {}
abstract class VDom implements VNode {
  VDom call(List<VNode> children);
}

external VDom h(String name, [Map<String, Object> attrs]);
external VNode text(String text);
