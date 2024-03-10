import 'package:flutter/material.dart';
import 'package:flutter_lyric/lyric_ui/lyric_ui.dart';

///Sample Netease style
///should be extends LyricUI implementation your own UI.
///this property only for change UI,if not demand just only overwrite methods.
class UINetease extends LyricUI {
  double defaultSize;
  double defaultExtSize;
  double otherMainSize;
  double bias;
  double lineGap;
  double inlineGap;
  Color extColor;
  Color lyricColor;
  Color otherMainColor;
  Color highlightColor;
  LyricAlign lyricAlign;
  LyricBaseLine lyricBaseLine;
  bool highlight;
  HighlightDirection highlightDirection;

  UINetease(
      {this.defaultSize = 18,
      this.defaultExtSize = 14,
      this.otherMainSize = 16,
      this.bias = 0.5,
      this.lineGap = 25,
      this.inlineGap = 25,
      this.extColor = Colors.grey,
      this.lyricColor = Colors.white,
      this.otherMainColor = Colors.grey,
      this.highlightColor = Colors.redAccent,
      this.lyricAlign = LyricAlign.CENTER,
      this.lyricBaseLine = LyricBaseLine.CENTER,
      this.highlight = true,
      this.highlightDirection = HighlightDirection.LTR});

  UINetease.clone(UINetease uiNetease)
      : this(
          defaultSize: uiNetease.defaultSize,
          defaultExtSize: uiNetease.defaultExtSize,
          otherMainSize: uiNetease.otherMainSize,
          bias: uiNetease.bias,
          lineGap: uiNetease.lineGap,
          inlineGap: uiNetease.inlineGap,
          lyricAlign: uiNetease.lyricAlign,
          extColor: uiNetease.extColor,
          lyricColor: uiNetease.lyricColor,
          otherMainColor: uiNetease.otherMainColor,
          highlightColor: uiNetease.highlightColor,
          lyricBaseLine: uiNetease.lyricBaseLine,
          highlight: uiNetease.highlight,
          highlightDirection: uiNetease.highlightDirection,
        );

  @override
  TextStyle getPlayingExtTextStyle() =>
      TextStyle(color: extColor, fontSize: defaultExtSize);

  @override
  TextStyle getOtherExtTextStyle() => TextStyle(
        color: extColor,
        fontSize: defaultExtSize,
      );

  @override
  TextStyle getOtherMainTextStyle() =>
      TextStyle(color: otherMainColor, fontSize: otherMainSize);

  @override
  TextStyle getPlayingMainTextStyle() => TextStyle(
        color: lyricColor,
        fontSize: defaultSize,
      );

  @override
  double getInlineSpace() => inlineGap;

  @override
  double getLineSpace() => lineGap;

  @override
  double getPlayingLineBias() => bias;

  @override
  LyricAlign getLyricHorizontalAlign() => lyricAlign;

  @override
  LyricBaseLine getBiasBaseLine() => lyricBaseLine;

  @override
  bool enableHighlight() => highlight;

  @override
  HighlightDirection getHighlightDirection() => highlightDirection;
}
