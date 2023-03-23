import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';
import 'package:mustache_template/mustache_template.dart';

import '../classes/layout.dart';
import '../util.dart';

part 'presentation.xml.g.dart';

const _source = r'''
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<p:presentation saveSubsetFonts="1" xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main" xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">
  <p:sldMasterIdLst>
    <p:sldMasterId id="2147483648" r:id="rId1"/>
  </p:sldMasterIdLst>
  <p:sldIdLst>
  {{#slides}}
  <p:sldId id="{{id}}" r:id="rId{{rId}}"/>
  {{/slides}}
  </p:sldIdLst>
  {{#layout}}
  <p:sldSz cx="{{width}}" cy="{{height}}" type="{{type}}"/>
  {{/layout}}
  {{^layout}}
  <p:sldSz cx="9144000" cy="6858000" type="screen4x3"/>
  {{/layout}}
  <p:notesSz cx="6858000" cy="9144000"/>
  <p:defaultTextStyle>
    <a:defPPr>
      <a:defRPr lang="en-US"/>
    </a:defPPr>
    <a:lvl1pPr algn="l" defTabSz="914400" eaLnBrk="1" hangingPunct="1" latinLnBrk="0" marL="0" rtl="0">
      <a:defRPr kern="1200" sz="1800">
        <a:solidFill>
          <a:schemeClr val="tx1"/>
        </a:solidFill>
        <a:latin typeface="+mn-lt"/>
        <a:ea typeface="+mn-ea"/>
        <a:cs typeface="+mn-cs"/>
      </a:defRPr>
    </a:lvl1pPr>
    <a:lvl2pPr algn="l" defTabSz="914400" eaLnBrk="1" hangingPunct="1" latinLnBrk="0" marL="457200" rtl="0">
      <a:defRPr kern="1200" sz="1800">
        <a:solidFill>
          <a:schemeClr val="tx1"/>
        </a:solidFill>
        <a:latin typeface="+mn-lt"/>
        <a:ea typeface="+mn-ea"/>
        <a:cs typeface="+mn-cs"/>
      </a:defRPr>
    </a:lvl2pPr>
    <a:lvl3pPr algn="l" defTabSz="914400" eaLnBrk="1" hangingPunct="1" latinLnBrk="0" marL="914400" rtl="0">
      <a:defRPr kern="1200" sz="1800">
        <a:solidFill>
          <a:schemeClr val="tx1"/>
        </a:solidFill>
        <a:latin typeface="+mn-lt"/>
        <a:ea typeface="+mn-ea"/>
        <a:cs typeface="+mn-cs"/>
      </a:defRPr>
    </a:lvl3pPr>
    <a:lvl4pPr algn="l" defTabSz="914400" eaLnBrk="1" hangingPunct="1" latinLnBrk="0" marL="1371600" rtl="0">
      <a:defRPr kern="1200" sz="1800">
        <a:solidFill>
          <a:schemeClr val="tx1"/>
        </a:solidFill>
        <a:latin typeface="+mn-lt"/>
        <a:ea typeface="+mn-ea"/>
        <a:cs typeface="+mn-cs"/>
      </a:defRPr>
    </a:lvl4pPr>
    <a:lvl5pPr algn="l" defTabSz="914400" eaLnBrk="1" hangingPunct="1" latinLnBrk="0" marL="1828800" rtl="0">
      <a:defRPr kern="1200" sz="1800">
        <a:solidFill>
          <a:schemeClr val="tx1"/>
        </a:solidFill>
        <a:latin typeface="+mn-lt"/>
        <a:ea typeface="+mn-ea"/>
        <a:cs typeface="+mn-cs"/>
      </a:defRPr>
    </a:lvl5pPr>
    <a:lvl6pPr algn="l" defTabSz="914400" eaLnBrk="1" hangingPunct="1" latinLnBrk="0" marL="2286000" rtl="0">
      <a:defRPr kern="1200" sz="1800">
        <a:solidFill>
          <a:schemeClr val="tx1"/>
        </a:solidFill>
        <a:latin typeface="+mn-lt"/>
        <a:ea typeface="+mn-ea"/>
        <a:cs typeface="+mn-cs"/>
      </a:defRPr>
    </a:lvl6pPr>
    <a:lvl7pPr algn="l" defTabSz="914400" eaLnBrk="1" hangingPunct="1" latinLnBrk="0" marL="2743200" rtl="0">
      <a:defRPr kern="1200" sz="1800">
        <a:solidFill>
          <a:schemeClr val="tx1"/>
        </a:solidFill>
        <a:latin typeface="+mn-lt"/>
        <a:ea typeface="+mn-ea"/>
        <a:cs typeface="+mn-cs"/>
      </a:defRPr>
    </a:lvl7pPr>
    <a:lvl8pPr algn="l" defTabSz="914400" eaLnBrk="1" hangingPunct="1" latinLnBrk="0" marL="3200400" rtl="0">
      <a:defRPr kern="1200" sz="1800">
        <a:solidFill>
          <a:schemeClr val="tx1"/>
        </a:solidFill>
        <a:latin typeface="+mn-lt"/>
        <a:ea typeface="+mn-ea"/>
        <a:cs typeface="+mn-cs"/>
      </a:defRPr>
    </a:lvl8pPr>
    <a:lvl9pPr algn="l" defTabSz="914400" eaLnBrk="1" hangingPunct="1" latinLnBrk="0" marL="3657600" rtl="0">
      <a:defRPr kern="1200" sz="1800">
        <a:solidFill>
          <a:schemeClr val="tx1"/>
        </a:solidFill>
        <a:latin typeface="+mn-lt"/>
        <a:ea typeface="+mn-ea"/>
        <a:cs typeface="+mn-cs"/>
      </a:defRPr>
    </a:lvl9pPr>
  </p:defaultTextStyle>
  <p:extLst>
    <p:ext uri="{EFAFB233-063F-42B5-8137-9DF3F51BA10A}">
      <p15:sldGuideLst xmlns:p15="http://schemas.microsoft.com/office/powerpoint/2012/main">
        <p15:guide id="1" orient="horz" pos="2160">
          <p15:clr>
            <a:srgbClr val="A4A3A4"/>
          </p15:clr>
        </p15:guide>
        <p15:guide id="2" pos="2880">
          <p15:clr>
            <a:srgbClr val="A4A3A4"/>
          </p15:clr>
        </p15:guide>
      </p15:sldGuideLst>
    </p:ext>
  </p:extLst>
</p:presentation>
''';

@JsonSerializable(createFactory: false)
class Slide {
  final int id;
  final int rId;

  Slide({
    required this.id,
    required this.rId,
  });

  factory Slide.fromIndex(int index) {
    return Slide(
      id: 255 + (index + 1),
      rId: (index + 1) + 5,
    );
  }

  Map<String, dynamic> toJson() => _$SlideToJson(this);
}

@JsonSerializable(createFactory: false)
class Source {
  final List<Slide> slides;
  final Layout layout;

  Source({
    required this.slides,
    required this.layout,
  });

  factory Source.create(int count, Layout layout) {
    return Source(
      slides: List.generate(count, (index) => Slide.fromIndex(index)),
      layout: layout,
    );
  }

  Map<String, dynamic> toJson() => _$SourceToJson(this);
}

final _template = Template(
  _source.trim(),
  name: 'presentation.xml',
  htmlEscapeValues: false,
);

String renderString(Source data) {
  return _template.renderString(data.toJson());
}
