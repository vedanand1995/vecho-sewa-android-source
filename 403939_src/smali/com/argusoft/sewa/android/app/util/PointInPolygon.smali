.class public Lcom/argusoft/sewa/android/app/util/PointInPolygon;
.super Ljava/lang/Object;
.source "PointInPolygon.java"


# static fields
.field private static final PI:D = 3.14159265

.field private static final TWO_PI:D = 6.2831853


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static angle2D(DDDD)D
    .locals 0

    .line 78
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    .line 79
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    sub-double/2addr p2, p0

    :goto_0
    const-wide p0, 0x400921fb53c8d4f1L    # 3.14159265

    const-wide p4, 0x401921fb53c8d4f1L    # 6.2831853

    cmpl-double p6, p2, p0

    if-lez p6, :cond_0

    sub-double/2addr p2, p4

    goto :goto_0

    :cond_0
    :goto_1
    const-wide p0, -0x3ff6de04ac372b0fL    # -3.14159265

    cmpg-double p6, p2, p0

    if-gez p6, :cond_1

    add-double/2addr p2, p4

    goto :goto_1

    :cond_1
    return-wide p2
.end method

.method public static coordinateInsidePolygon()Z
    .locals 24

    .line 19
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 20
    sget-object v0, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 21
    sget-object v2, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmpl-double v7, v0, v5

    if-eqz v7, :cond_8

    cmpl-double v7, v2, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 27
    :cond_0
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->techoService:Lcom/argusoft/sewa/android/app/core/TechoService;

    if-nez v7, :cond_1

    return v4

    .line 31
    :cond_1
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->techoService:Lcom/argusoft/sewa/android/app/core/TechoService;

    invoke-interface {v7}, Lcom/argusoft/sewa/android/app/core/TechoService;->checkIfFeatureIsReleased()Z

    move-result v7

    if-nez v7, :cond_2

    return v4

    .line 36
    :cond_2
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfLatLongWithLGDCode:Ljava/util/Map;

    if-eqz v7, :cond_8

    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfLatLongWithLGDCode:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_3

    .line 40
    :cond_3
    sget-object v7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfLatLongWithLGDCode:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    const-string v11, "latArray"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 42
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "longArray"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v10, :cond_4

    .line 49
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    move-wide v12, v5

    if-eqz v8, :cond_6

    :goto_2
    if-ge v9, v11, :cond_6

    .line 54
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    sub-double v16, v14, v0

    add-int/lit8 v14, v9, 0x1

    .line 55
    rem-int v15, v14, v11

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    sub-double v20, v18, v0

    .line 56
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    .line 57
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Double;

    if-eqz v9, :cond_5

    if-eqz v15, :cond_5

    .line 59
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    sub-double v18, v18, v2

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    sub-double v22, v22, v2

    invoke-static/range {v16 .. v23}, Lcom/argusoft/sewa/android/app/util/PointInPolygon;->angle2D(DDDD)D

    move-result-wide v15

    add-double/2addr v12, v15

    :cond_5
    move v9, v14

    goto :goto_2

    .line 64
    :cond_6
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x400921fb53c8d4f1L    # 3.14159265

    cmpg-double v12, v8, v10

    if-gez v12, :cond_8

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_3
    return v4
.end method

.method public static isValidGpsCoordinate(DD)Z
    .locals 3

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-wide p0, -0x3f99800000000000L    # -180.0

    cmpl-double v0, p2, p0

    if-lez v0, :cond_0

    const-wide p0, 0x4066800000000000L    # 180.0

    cmpg-double v0, p2, p0

    if-gez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
