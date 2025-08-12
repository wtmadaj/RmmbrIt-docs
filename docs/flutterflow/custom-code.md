---
layout: default
title: Custom Code
parent: FlutterFlow
nav_order: 2
---

# Custom Code
{: .no_toc }

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

---

# SearchNoteV3
My Rmmbrits
{: .label .label-green}
MyRmmbritsListView > Container
{: .label .label-blue}
```dart
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/flutter_flow/custom_functions.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';

bool? searchNoteV3(
  String? searchQuery,
  GetAllNotesRow? row,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (searchQuery == null || searchQuery.isEmpty) {
    return true;
  }

  searchQuery = searchQuery.toLowerCase();

  if (row!.tagsColumn != null) {
    return row!.title.toLowerCase().contains(searchQuery) ||
        row.content.toLowerCase().contains(searchQuery) ||
        row.tagsColumn!.toLowerCase().contains(searchQuery);
  } else {
    return row!.title.toLowerCase().contains(searchQuery) ||
        row.content.toLowerCase().contains(searchQuery);
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

```

---

# SearchNote
Deprecated
{: .label .label-red}

```dart
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/flutter_flow/custom_functions.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';

bool? searchNote(
  String? searchQuery,
  GetAllNotesRow? row,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (searchQuery == null || searchQuery.isEmpty) {
    return true;
  }

  searchQuery = searchQuery.toLowerCase();

  return row!.title.toLowerCase().contains(searchQuery) ||
      row.content.toLowerCase().contains(searchQuery);

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
```

---

# SearchTagNames
Deprecated
{: .label .label-red}
Tags
{: .label .label-green}
TagsGridView > Container
{: .label .label-blue}
```dart
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/flutter_flow/custom_functions.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';

bool? searchTagNames(
  String? searchQuery,
  GetAllTagsRow? tagsRow,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (searchQuery == null || searchQuery.isEmpty) {
    return true;
  }

  searchQuery = searchQuery.toLowerCase();

  return tagsRow!.tagName.toLowerCase().contains(searchQuery);

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
```