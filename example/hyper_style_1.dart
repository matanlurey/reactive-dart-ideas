// Copyright 2017, Google Inc.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

void main() {
  h('div', {}, [
    h('h1', {}, [text('Hello World')]),
    text('Welcome "User"!'),
    h('button', {
      'disabled': true,
    }, [
      text('OK'),
    ]),
  ]);
}

class VNode {}
class VText implements VNode {}

external VNode h(String name, Map<String, Object> attrs, List<VNode> children);
external VNode text(String text);
