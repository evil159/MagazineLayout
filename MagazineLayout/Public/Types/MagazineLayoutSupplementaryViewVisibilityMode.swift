// Created by bryankeller on 10/15/18.
// Copyright © 2018 Airbnb, Inc.

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import CoreGraphics

// MARK: - MagazineLayoutSupplementaryViewVisibilityMode

/// Represents the visibility mode for a supplementary views(headers/footers).
public enum MagazineLayoutSupplementaryViewVisibilityMode {

  /// This visibility mode will cause the view to be displayed using the specified height mode in
  /// its respective section.
  case visible(heightMode: MagazineLayoutSupplementaryViewHeightMode)

  /// This visibility mode will cause the view to not be visibile in its respective section.
  case hidden

}

// MARK: - MagazineLayoutSupplementaryViewHeightMode

/// Represents the vertical sizing mode for a supplementary view.
public enum MagazineLayoutSupplementaryViewHeightMode {

  /// This height mode will force the view to be displayed with a height equal to `height`.
  ///
  /// To properly support multiline labels, dynamic type, and other technologies that could affect
  /// the height of your headers dynamically, consider using the `dynamic` height mode.
  case `static`(height: CGFloat)

  /// This height mode will cause the view to self-size in the vertical direction.
  ///
  /// In practice, self-sizing in the vertical direction means that the view will get its height
  /// from the Auto Layout engine. Use this height mode for supplementary views whose height
  /// is not known upfront. For example, if you support multiline labels or dynamic type,
  //// your height is likely not known until the Auto Layout engine resolves the layout at runtime.
  case dynamic

}

// MARK: Equatable

extension MagazineLayoutSupplementaryViewHeightMode: Equatable {

  public static func == (
    lhs: MagazineLayoutSupplementaryViewHeightMode,
    rhs: MagazineLayoutSupplementaryViewHeightMode)
    -> Bool
  {
    switch (lhs, rhs) {
    case (.static(let l), .static(let r)): return l == r
    case (.dynamic, .dynamic): return true
    default: return false
    }
  }

}
