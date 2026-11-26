.class Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/DateTimePrinter;
.implements Lorg/joda/time/format/DateTimeParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneOffset"
.end annotation


# instance fields
.field private final iMaxFields:I

.field private final iMinFields:I

.field private final iShowSeparators:Z

.field private final iZeroOffsetParseText:Ljava/lang/String;

.field private final iZeroOffsetPrintText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    .line 2121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2122
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    .line 2123
    iput-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    .line 2124
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-lez p4, :cond_1

    if-lt p5, p4, :cond_1

    const/4 p1, 0x4

    if-le p4, p1, :cond_0

    const/4 p4, 0x4

    const/4 p5, 0x4

    .line 2132
    :cond_0
    iput p4, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    .line 2133
    iput p5, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    return-void

    .line 2126
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private digitCount(Ljava/lang/String;II)I
    .locals 3

    .line 2453
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-lez p3, :cond_1

    add-int v1, p2, v0

    .line 2456
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .line 2274
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->estimatePrintedLength()I

    move-result v0

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 3

    .line 2137
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    .line 2138
    iget-boolean v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    .line 2141
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 2142
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1
    return v1
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 12

    .line 2278
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    .line 2281
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/4 v4, 0x0

    .line 2294
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v1, :cond_2

    .line 2282
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    if-lez v0, :cond_0

    .line 2285
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2290
    :cond_0
    invoke-virtual {p1, v5}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    return p3

    .line 2293
    :cond_1
    iget-object v9, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v7, 0x1

    move-object v6, p2

    move v8, p3

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2294
    invoke-virtual {p1, v5}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    .line 2295
    iget-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    return p3

    :cond_2
    :goto_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    not-int p1, p3

    return p1

    .line 2306
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    if-ne v5, v2, :cond_1b

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, p3, 0x1

    const/4 v5, 0x2

    .line 2330
    invoke-direct {p0, p2, v3, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/String;II)I

    move-result v6

    if-ge v6, v5, :cond_5

    not-int p1, v3

    return p1

    .line 2337
    :cond_5
    invoke-static {p2, v3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x17

    if-le v6, v7, :cond_6

    not-int p1, v3

    return p1

    :cond_6
    const v3, 0x36ee80

    mul-int v6, v6, v3

    add-int/lit8 v3, v0, -0x3

    add-int/lit8 v7, p3, 0x3

    if-gtz v3, :cond_7

    goto/16 :goto_7

    .line 2354
    :cond_7
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    const/16 v10, 0x30

    if-ne v8, v9, :cond_8

    add-int/lit8 v3, v0, -0x4

    add-int/lit8 v7, p3, 0x4

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    if-lt v8, v10, :cond_19

    const/16 p3, 0x39

    if-gt v8, p3, :cond_19

    .line 2367
    :goto_2
    invoke-direct {p0, p2, v7, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_9

    if-nez v4, :cond_9

    goto/16 :goto_7

    :cond_9
    if-ge p3, v5, :cond_a

    not-int p1, v7

    return p1

    .line 2375
    :cond_a
    invoke-static {p2, v7}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/String;I)I

    move-result p3

    const/16 v0, 0x3b

    if-le p3, v0, :cond_b

    not-int p1, v7

    return p1

    :cond_b
    const v8, 0xea60

    mul-int p3, p3, v8

    add-int/2addr v6, p3

    add-int/lit8 p3, v3, -0x2

    add-int/lit8 v8, v7, 0x2

    if-gtz p3, :cond_c

    goto :goto_3

    :cond_c
    if-eqz v4, :cond_e

    .line 2390
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-eq p3, v9, :cond_d

    :goto_3
    move v7, v8

    goto/16 :goto_7

    :cond_d
    add-int/lit8 p3, v3, -0x3

    add-int/lit8 v7, v7, 0x3

    goto :goto_4

    :cond_e
    move v7, v8

    .line 2397
    :goto_4
    invoke-direct {p0, p2, v7, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_f

    if-nez v4, :cond_f

    goto :goto_7

    :cond_f
    if-ge v3, v5, :cond_10

    not-int p1, v7

    return p1

    .line 2405
    :cond_10
    invoke-static {p2, v7}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v0, :cond_11

    not-int p1, v7

    return p1

    :cond_11
    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v6, v3

    add-int/lit8 p3, p3, -0x2

    add-int/lit8 v0, v7, 0x2

    if-gtz p3, :cond_12

    goto :goto_5

    :cond_12
    if-eqz v4, :cond_15

    .line 2420
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v3, 0x2e

    if-eq p3, v3, :cond_14

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v3, 0x2c

    if-eq p3, v3, :cond_14

    :cond_13
    :goto_5
    move v7, v0

    goto :goto_7

    :cond_14
    add-int/lit8 v7, v7, 0x3

    goto :goto_6

    :cond_15
    move v7, v0

    :goto_6
    const/4 p3, 0x3

    .line 2427
    invoke-direct {p0, p2, v7, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_16

    if-nez v4, :cond_16

    goto :goto_7

    :cond_16
    if-ge p3, v1, :cond_17

    not-int p1, v7

    return p1

    :cond_17
    add-int/lit8 v0, v7, 0x1

    .line 2435
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v10

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v6, v3

    if-le p3, v1, :cond_13

    add-int/lit8 v1, v7, 0x2

    .line 2437
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sub-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v6, v0

    if-le p3, v5, :cond_18

    add-int/lit8 v7, v7, 0x3

    .line 2439
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    sub-int/2addr p2, v10

    add-int/2addr v6, p2

    goto :goto_7

    :cond_18
    move v7, v1

    :cond_19
    :goto_7
    if-eqz v2, :cond_1a

    neg-int v6, v6

    .line 2444
    :cond_1a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    return v7

    :cond_1b
    not-int p1, p3

    return p1
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p6, :cond_0

    return-void

    :cond_0
    if-nez p5, :cond_1

    .line 2212
    iget-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 2213
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_1
    if-ltz p5, :cond_2

    const/16 p2, 0x2b

    .line 2217
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x2d

    .line 2219
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    neg-int p5, p5

    :goto_0
    const p2, 0x36ee80

    .line 2223
    div-int p3, p5, p2

    const/4 p4, 0x2

    .line 2224
    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    .line 2225
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    const/4 p7, 0x1

    if-ne p6, p7, :cond_3

    return-void

    :cond_3
    mul-int p3, p3, p2

    sub-int/2addr p5, p3

    if-nez p5, :cond_4

    .line 2229
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-ne p2, p7, :cond_4

    return-void

    :cond_4
    const p2, 0xea60

    .line 2233
    div-int p3, p5, p2

    .line 2234
    iget-boolean p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    const/16 p7, 0x3a

    if-eqz p6, :cond_5

    .line 2235
    invoke-virtual {p1, p7}, Ljava/io/Writer;->write(I)V

    .line 2237
    :cond_5
    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    .line 2238
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    if-ne p6, p4, :cond_6

    return-void

    :cond_6
    mul-int p3, p3, p2

    sub-int/2addr p5, p3

    if-nez p5, :cond_7

    .line 2242
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-ne p2, p4, :cond_7

    return-void

    .line 2246
    :cond_7
    div-int/lit16 p2, p5, 0x3e8

    .line 2247
    iget-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz p3, :cond_8

    .line 2248
    invoke-virtual {p1, p7}, Ljava/io/Writer;->write(I)V

    .line 2250
    :cond_8
    invoke-static {p1, p2, p4}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    .line 2251
    iget p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_9

    return-void

    :cond_9
    mul-int/lit16 p2, p2, 0x3e8

    sub-int/2addr p5, p2

    if-nez p5, :cond_a

    .line 2255
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-ne p2, p4, :cond_a

    return-void

    .line 2259
    :cond_a
    iget-boolean p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz p2, :cond_b

    const/16 p2, 0x2e

    .line 2260
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 2262
    :cond_b
    invoke-static {p1, p5, p4}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    return-void
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 0

    if-nez p6, :cond_0

    return-void

    :cond_0
    if-nez p5, :cond_1

    .line 2153
    iget-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 2154
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    if-ltz p5, :cond_2

    const/16 p2, 0x2b

    .line 2158
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const/16 p2, 0x2d

    .line 2160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int p5, p5

    :goto_0
    const p2, 0x36ee80

    .line 2164
    div-int p3, p5, p2

    const/4 p4, 0x2

    .line 2165
    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 2166
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    const/4 p7, 0x1

    if-ne p6, p7, :cond_3

    return-void

    :cond_3
    mul-int p3, p3, p2

    sub-int/2addr p5, p3

    if-nez p5, :cond_4

    .line 2170
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p7, :cond_4

    return-void

    :cond_4
    const p2, 0xea60

    .line 2174
    div-int p3, p5, p2

    .line 2175
    iget-boolean p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    const/16 p7, 0x3a

    if-eqz p6, :cond_5

    .line 2176
    invoke-virtual {p1, p7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2178
    :cond_5
    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 2179
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    if-ne p6, p4, :cond_6

    return-void

    :cond_6
    mul-int p3, p3, p2

    sub-int/2addr p5, p3

    if-nez p5, :cond_7

    .line 2183
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p4, :cond_7

    return-void

    .line 2187
    :cond_7
    div-int/lit16 p2, p5, 0x3e8

    .line 2188
    iget-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz p3, :cond_8

    .line 2189
    invoke-virtual {p1, p7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2191
    :cond_8
    invoke-static {p1, p2, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 2192
    iget p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_9

    return-void

    :cond_9
    mul-int/lit16 p2, p2, 0x3e8

    sub-int/2addr p5, p2

    if-nez p5, :cond_a

    .line 2196
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p4, :cond_a

    return-void

    .line 2200
    :cond_a
    iget-boolean p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz p2, :cond_b

    const/16 p2, 0x2e

    .line 2201
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2203
    :cond_b
    invoke-static {p1, p5, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0

    return-void
.end method
