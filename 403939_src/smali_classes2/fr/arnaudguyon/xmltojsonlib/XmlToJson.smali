.class public Lfr/arnaudguyon/xmltojsonlib/XmlToJson;
.super Ljava/lang/Object;
.source "XmlToJson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_NAME:Ljava/lang/String; = "content"

.field private static final DEFAULT_EMPTY_BOOLEAN:Z = false

.field private static final DEFAULT_EMPTY_DOUBLE:D = 0.0

.field private static final DEFAULT_EMPTY_INTEGER:I = 0x0

.field private static final DEFAULT_EMPTY_LONG:J = 0x0L

.field private static final DEFAULT_EMPTY_STRING:Ljava/lang/String; = ""

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_INDENTATION:Ljava/lang/String; = "   "

.field private static final TAG:Ljava/lang/String; = "XmlToJson"


# instance fields
.field private mAttributeNameReplacements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentNameReplacements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceClassForPath:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mForceListPaths:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceListPatterns:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mIndentationPattern:Ljava/lang/String;

.field private mInputEncoding:Ljava/lang/String;

.field private mInputStreamSource:Ljava/io/InputStream;

.field private mJsonObject:Lorg/json/JSONObject;

.field private mSkippedAttributes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStringSource:Ljava/io/StringReader;


# direct methods
.method private constructor <init>(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)V
    .locals 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "   "

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mIndentationPattern:Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mForceListPatterns:Ljava/util/HashSet;

    .line 227
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mSkippedAttributes:Ljava/util/HashSet;

    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mSkippedTags:Ljava/util/HashSet;

    .line 232
    invoke-static {p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->access$100(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)Ljava/io/StringReader;

    move-result-object v0

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mStringSource:Ljava/io/StringReader;

    .line 233
    invoke-static {p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->access$200(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mInputStreamSource:Ljava/io/InputStream;

    .line 234
    invoke-static {p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->access$300(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mInputEncoding:Ljava/lang/String;

    .line 235
    invoke-static {p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->access$400(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mForceListPaths:Ljava/util/HashSet;

    .line 236
    invoke-static {p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->access$500(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mForceListPatterns:Ljava/util/HashSet;

    .line 237
    invoke-static {p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->access$600(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mAttributeNameReplacements:Ljava/util/HashMap;

    .line 238
    invoke-static {p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->access$700(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mContentNameReplacements:Ljava/util/HashMap;

    .line 239
    invoke-static {p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->access$800(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mForceClassForPath:Ljava/util/HashMap;

    .line 240
    invoke-static {p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->access$900(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mSkippedAttributes:Ljava/util/HashSet;

    .line 241
    invoke-static {p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;->access$1000(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mSkippedTags:Ljava/util/HashSet;

    .line 243
    invoke-direct {p0}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mJsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;Lfr/arnaudguyon/xmltojsonlib/XmlToJson$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;-><init>(Lfr/arnaudguyon/xmltojsonlib/XmlToJson$Builder;)V

    return-void
.end method

.method private convertTagToJson(Lfr/arnaudguyon/xmltojsonlib/Tag;Z)Lorg/json/JSONObject;
    .locals 6

    .line 357
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 360
    invoke-virtual {p1}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p1}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 362
    const-string v1, "content"

    invoke-direct {p0, v0, v1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->getContentNameReplacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {p1}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->putContent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getGroupedElements()Ljava/util/HashMap;

    move-result-object p1

    .line 369
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 371
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 372
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/arnaudguyon/xmltojsonlib/Tag;

    .line 373
    invoke-direct {p0, v0}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->isForcedList(Lfr/arnaudguyon/xmltojsonlib/Tag;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 375
    invoke-direct {p0, v0, v3}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->convertTagToJson(Lfr/arnaudguyon/xmltojsonlib/Tag;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 376
    invoke-virtual {v0}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {v0}, Lfr/arnaudguyon/xmltojsonlib/Tag;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    invoke-direct {p0, v0, v2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->convertTagToJson(Lfr/arnaudguyon/xmltojsonlib/Tag;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 381
    invoke-virtual {v0}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {v0}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual {v0}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, p2, v2, v0}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->putContent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 389
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfr/arnaudguyon/xmltojsonlib/Tag;

    .line 390
    invoke-direct {p0, v5, v3}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->convertTagToJson(Lfr/arnaudguyon/xmltojsonlib/Tag;Z)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 392
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/arnaudguyon/xmltojsonlib/Tag;

    invoke-virtual {v0}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_5
    return-object p2

    :catch_0
    move-exception p1

    .line 399
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 259
    :try_start_0
    new-instance v0, Lfr/arnaudguyon/xmltojsonlib/Tag;

    const-string v1, ""

    const-string v2, "xml"

    invoke-direct {v0, v1, v2}, Lfr/arnaudguyon/xmltojsonlib/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 262
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 263
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 265
    invoke-direct {p0, v1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->setInput(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 267
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    if-eqz v3, :cond_0

    .line 269
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 271
    :cond_0
    invoke-direct {p0, v0, v1}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->readTags(Lfr/arnaudguyon/xmltojsonlib/Tag;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 273
    invoke-direct {p0}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->unsetInput()V

    .line 275
    invoke-direct {p0, v0, v2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->convertTagToJson(Lfr/arnaudguyon/xmltojsonlib/Tag;Z)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 277
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private format(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    .line 526
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 527
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 528
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 529
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v2, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mIndentationPattern:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string v2, "\""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v2, "\": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 535
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 536
    check-cast v1, Lorg/json/JSONObject;

    .line 537
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v2, "{\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mIndentationPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->format(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget-object v1, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mIndentationPattern:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, "}"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 543
    :cond_0
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    .line 544
    check-cast v1, Lorg/json/JSONArray;

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mIndentationPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->formatArray(Lorg/json/JSONArray;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 547
    :cond_1
    invoke-direct {p0, v1, p2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->formatValue(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 549
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    const-string v1, ",\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 552
    :cond_2
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private formatArray(Lorg/json/JSONArray;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    .line 558
    const-string v0, "[\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 560
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 561
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 562
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 563
    check-cast v1, Lorg/json/JSONObject;

    .line 564
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget-object v2, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mIndentationPattern:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string v2, "{\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mIndentationPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->format(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    iget-object v1, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mIndentationPattern:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string v1, "}"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 571
    :cond_0
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    .line 572
    check-cast v1, Lorg/json/JSONArray;

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mIndentationPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->formatArray(Lorg/json/JSONArray;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 575
    :cond_1
    invoke-direct {p0, v1, p2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->formatValue(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 577
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 578
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_2
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private formatValue(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 587
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 588
    check-cast p1, Ljava/lang/String;

    .line 591
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 592
    const-string v0, "\\\""

    invoke-static {v0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 593
    const-string v0, "/"

    const-string v2, "\\\\/"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 594
    const-string v0, "\n"

    const-string v2, "\\\\n"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\t"

    const-string v2, "\\\\t"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 595
    const-string v0, "\r"

    const-string v2, "\\\\r"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 597
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 600
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 601
    check-cast p1, Ljava/lang/Long;

    .line 602
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 603
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 604
    check-cast p1, Ljava/lang/Integer;

    .line 605
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 606
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 607
    check-cast p1, Ljava/lang/Boolean;

    .line 608
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 609
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 610
    check-cast p1, Ljava/lang/Double;

    .line 611
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 613
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private getAttributeNameReplacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mAttributeNameReplacements:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method private getContentNameReplacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mContentNameReplacements:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method private isForcedList(Lfr/arnaudguyon/xmltojsonlib/Tag;)Z
    .locals 3

    .line 454
    invoke-virtual {p1}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 455
    iget-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mForceListPaths:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 458
    :cond_0
    iget-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mForceListPatterns:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 459
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private putContent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 407
    :try_start_0
    iget-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mForceClassForPath:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-nez p1, :cond_1

    if-nez p4, :cond_0

    .line 410
    const-string p4, ""

    .line 412
    :cond_0
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 414
    :cond_1
    const-class v0, Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 416
    :try_start_1
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 417
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 419
    :catch_0
    :try_start_2
    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 421
    :cond_2
    const-class v0, Ljava/lang/Long;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    if-ne p1, v0, :cond_3

    .line 423
    :try_start_3
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 424
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_1
    const-wide/16 v0, 0x0

    .line 426
    :try_start_4
    invoke-virtual {p2, p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 428
    :cond_3
    const-class v0, Ljava/lang/Double;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    if-ne p1, v0, :cond_4

    .line 430
    :try_start_5
    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 431
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_2
    const-wide/16 v0, 0x0

    .line 433
    :try_start_6
    invoke-virtual {p2, p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 435
    :cond_4
    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_8

    if-nez p4, :cond_5

    .line 437
    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 438
    :cond_5
    const-string p1, "true"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 439
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 440
    :cond_6
    const-string p1, "false"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 441
    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 443
    :cond_7
    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_8
    :goto_0
    return-void
.end method

.method private readTags(Lfr/arnaudguyon/xmltojsonlib/Tag;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .line 309
    const-string v0, "/"

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 311
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    iget-object v5, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mSkippedTags:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 316
    new-instance v6, Lfr/arnaudguyon/xmltojsonlib/Tag;

    invoke-direct {v6, v4, v2}, Lfr/arnaudguyon/xmltojsonlib/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_1

    .line 318
    invoke-virtual {p1, v6}, Lfr/arnaudguyon/xmltojsonlib/Tag;->addChild(Lfr/arnaudguyon/xmltojsonlib/Tag;)V

    .line 322
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 324
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 325
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 326
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lfr/arnaudguyon/xmltojsonlib/Tag;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 329
    iget-object v9, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mSkippedAttributes:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 333
    :cond_2
    invoke-direct {p0, v8, v5}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->getAttributeNameReplacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 334
    new-instance v9, Lfr/arnaudguyon/xmltojsonlib/Tag;

    invoke-direct {v9, v8, v5}, Lfr/arnaudguyon/xmltojsonlib/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v9, v7}, Lfr/arnaudguyon/xmltojsonlib/Tag;->setContent(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v6, v9}, Lfr/arnaudguyon/xmltojsonlib/Tag;->addChild(Lfr/arnaudguyon/xmltojsonlib/Tag;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 339
    :cond_3
    invoke-direct {p0, v6, p2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->readTags(Lfr/arnaudguyon/xmltojsonlib/Tag;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 341
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-virtual {p1, v2}, Lfr/arnaudguyon/xmltojsonlib/Tag;->setContent(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    return-void

    :cond_6
    if-ne v1, v3, :cond_7

    return-void

    .line 348
    :cond_7
    const-string v2, "XmlToJson"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown xml eventType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-ne v1, v3, :cond_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 352
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method private setInput(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mStringSource:Ljava/io/StringReader;

    if-eqz v0, :cond_0

    .line 285
    :try_start_0
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 291
    :cond_0
    :try_start_1
    iget-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mInputStreamSource:Ljava/io/InputStream;

    iget-object v1, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mInputEncoding:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 293
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private unsetInput()V
    .locals 1

    .line 299
    iget-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mStringSource:Ljava/io/StringReader;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public toFormattedString()Ljava/lang/String;
    .locals 3

    .line 514
    iget-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mJsonObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v1, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mJsonObject:Lorg/json/JSONObject;

    const-string v2, ""

    invoke-direct {p0, v1, v0, v2}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->format(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 519
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toFormattedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 500
    const-string p1, "   "

    iput-object p1, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mIndentationPattern:Ljava/lang/String;

    goto :goto_0

    .line 502
    :cond_0
    iput-object p1, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mIndentationPattern:Ljava/lang/String;

    .line 504
    :goto_0
    invoke-virtual {p0}, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->toFormattedString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .line 252
    iget-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 485
    iget-object v0, p0, Lfr/arnaudguyon/xmltojsonlib/XmlToJson;->mJsonObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
