.class public final Lcom/argusoft/sewa/android/app/util/nutrition/NutritionMaps;
.super Ljava/lang/Object;
.source "NutritionMaps.java"


# static fields
.field public static final HFA_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;",
            ">;"
        }
    .end annotation
.end field

.field public static final WA_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;",
            ">;"
        }
    .end annotation
.end field

.field public static final WH_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionMaps;->WA_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    const/16 v2, 0x46

    .line 15
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x40866666    # 4.2f

    const v10, 0x4099999a    # 4.8f

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x4019999a    # 2.4f

    const v6, 0x40333333    # 2.8f

    const v7, 0x404ccccd    # 3.2f

    const v8, 0x406ccccd    # 3.7f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 16
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v9, 0x40b00000    # 5.5f

    const v10, 0x40c66666    # 6.2f

    const v5, 0x404ccccd    # 3.2f

    const v6, 0x40666666    # 3.6f

    const v7, 0x40866666    # 4.2f

    const v8, 0x4099999a    # 4.8f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 17
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x40d33333    # 6.6f

    const/high16 v10, 0x40f00000    # 7.5f

    const/high16 v4, 0x40400000    # 3.0f

    const v5, 0x4079999a    # 3.9f

    const/high16 v6, 0x40900000    # 4.5f

    const v7, 0x40a33333    # 5.1f

    const v8, 0x40b9999a    # 5.8f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 18
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v9, 0x40f00000    # 7.5f

    const/high16 v10, 0x41080000    # 8.5f

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x40900000    # 4.5f

    const v6, 0x40a66666    # 5.2f

    const v7, 0x40b9999a    # 5.8f

    const v8, 0x40d33333    # 6.6f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 19
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x41033333    # 8.2f

    const v10, 0x4114cccd    # 9.3f

    const/high16 v5, 0x40a00000    # 5.0f

    const v6, 0x40b66666    # 5.7f

    const v7, 0x40cccccd    # 6.4f

    const v8, 0x40e9999a    # 7.3f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 20
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x410ccccd    # 8.8f

    const/high16 v10, 0x41200000    # 10.0f

    const v5, 0x40accccd    # 5.4f

    const v6, 0x40c33333    # 6.1f

    const v7, 0x40dccccd    # 6.9f

    const v8, 0x40f9999a    # 7.8f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 21
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x4114cccd    # 9.3f

    const v10, 0x4129999a    # 10.6f

    const/high16 v4, 0x40a00000    # 5.0f

    const v5, 0x40b66666    # 5.7f

    const/high16 v6, 0x40d00000    # 6.5f

    const v7, 0x40e9999a    # 7.3f

    const v8, 0x41033333    # 8.2f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 22
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x411ccccd    # 9.8f

    const v10, 0x4131999a    # 11.1f

    const/high16 v5, 0x40c00000    # 6.0f

    const v6, 0x40d9999a    # 6.8f

    const v7, 0x40f33333    # 7.6f

    const v8, 0x4109999a    # 8.6f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 23
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x41233333    # 10.2f

    const v10, 0x4139999a    # 11.6f

    const v5, 0x40c9999a    # 6.3f

    const/high16 v6, 0x40e00000    # 7.0f

    const v7, 0x40fccccd    # 7.9f

    const/high16 v8, 0x41100000    # 9.0f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 24
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v9, 0x41280000    # 10.5f

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v5, 0x40d00000    # 6.5f

    const v6, 0x40e9999a    # 7.3f

    const v7, 0x41033333    # 8.2f

    const v8, 0x4114cccd    # 9.3f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 25
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x412e6666    # 10.9f

    const v10, 0x41466666    # 12.4f

    const v5, 0x40d66666    # 6.7f

    const/high16 v6, 0x40f00000    # 7.5f

    const/high16 v7, 0x41080000    # 8.5f

    const v8, 0x4119999a    # 9.6f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 26
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x41333333    # 11.2f

    const v10, 0x414ccccd    # 12.8f

    const/high16 v4, 0x40c00000    # 6.0f

    const v5, 0x40dccccd    # 6.9f

    const v6, 0x40f66666    # 7.7f

    const v7, 0x410b3333    # 8.7f

    const v8, 0x411e6666    # 9.9f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 27
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v9, 0x41380000    # 11.5f

    const v10, 0x4151999a    # 13.1f

    const/high16 v5, 0x40e00000    # 7.0f

    const v6, 0x40fccccd    # 7.9f

    const v7, 0x410e6666    # 8.9f

    const v8, 0x4121999a    # 10.1f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 28
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x413ccccd    # 11.8f

    const/high16 v10, 0x41580000    # 13.5f

    const v5, 0x40e66666    # 7.2f

    const v6, 0x4101999a    # 8.1f

    const v7, 0x41133333    # 9.2f

    const v8, 0x41266666    # 10.4f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe

    .line 29
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x4141999a    # 12.1f

    const v10, 0x415ccccd    # 13.8f

    const v5, 0x40eccccd    # 7.4f

    const v6, 0x4104cccd    # 8.3f

    const v7, 0x41166666    # 9.4f

    const v8, 0x4129999a    # 10.6f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    .line 30
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x41466666    # 12.4f

    const v10, 0x4161999a    # 14.1f

    const v5, 0x40f33333    # 7.6f

    const/high16 v6, 0x41080000    # 8.5f

    const v7, 0x4119999a    # 9.6f

    const v8, 0x412e6666    # 10.9f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    .line 31
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x4149999a    # 12.6f

    const/high16 v10, 0x41680000    # 14.5f

    const v5, 0x40f66666    # 7.7f

    const v6, 0x410b3333    # 8.7f

    const v7, 0x411ccccd    # 9.8f

    const v8, 0x4131999a    # 11.1f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    .line 32
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x414e6666    # 12.9f

    const v10, 0x416ccccd    # 14.8f

    const/high16 v4, 0x40e00000    # 7.0f

    const v5, 0x40fccccd    # 7.9f

    const v6, 0x410e6666    # 8.9f

    const/high16 v7, 0x41200000    # 10.0f

    const v8, 0x41366666    # 11.4f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x12

    .line 33
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x41533333    # 13.2f

    const v10, 0x4171999a    # 15.1f

    const v5, 0x4101999a    # 8.1f

    const v6, 0x4111999a    # 9.1f

    const v7, 0x41233333    # 10.2f

    const v8, 0x4139999a    # 11.6f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x13

    .line 34
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v9, 0x41580000    # 13.5f

    const v10, 0x41766666    # 15.4f

    const v5, 0x41033333    # 8.2f

    const v6, 0x41133333    # 9.2f

    const v7, 0x41266666    # 10.4f

    const v8, 0x413ccccd    # 11.8f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    .line 35
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x415b3333    # 13.7f

    const v10, 0x417b3333    # 15.7f

    const v5, 0x41066666    # 8.4f

    const v6, 0x41166666    # 9.4f

    const v7, 0x4129999a    # 10.6f

    const v8, 0x4141999a    # 12.1f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x15

    .line 36
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v10, 0x41800000    # 16.0f

    const v5, 0x4109999a    # 8.6f

    const v6, 0x4119999a    # 9.6f

    const v7, 0x412e6666    # 10.9f

    const v8, 0x4144cccd    # 12.3f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x16

    .line 37
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x4164cccd    # 14.3f

    const v10, 0x41833333    # 16.4f

    const v5, 0x410b3333    # 8.7f

    const v6, 0x411ccccd    # 9.8f

    const v7, 0x4131999a    # 11.1f

    const/high16 v8, 0x41480000    # 12.5f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x17

    .line 38
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x4169999a    # 14.6f

    const v10, 0x4185999a    # 16.7f

    const v5, 0x410e6666    # 8.9f

    const/high16 v6, 0x41200000    # 10.0f

    const v7, 0x4134cccd    # 11.3f

    const v8, 0x414ccccd    # 12.8f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x18

    .line 39
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x416ccccd    # 14.8f

    const/high16 v10, 0x41880000    # 17.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x41100000    # 9.0f

    const v6, 0x41233333    # 10.2f

    const/high16 v7, 0x41380000    # 11.5f

    const/high16 v8, 0x41500000    # 13.0f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x19

    .line 40
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x4171999a    # 15.1f

    const v10, 0x418a6666    # 17.3f

    const v5, 0x41133333    # 9.2f

    const v6, 0x4124cccd    # 10.3f

    const v7, 0x413b3333    # 11.7f

    const v8, 0x4154cccd    # 13.3f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1a

    .line 41
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x41766666    # 15.4f

    const v10, 0x418d999a    # 17.7f

    const v5, 0x41166666    # 9.4f

    const/high16 v6, 0x41280000    # 10.5f

    const v7, 0x413e6666    # 11.9f

    const/high16 v8, 0x41580000    # 13.5f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1b

    .line 42
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x417b3333    # 15.7f

    const/high16 v10, 0x41900000    # 18.0f

    const/high16 v5, 0x41180000    # 9.5f

    const v6, 0x412b3333    # 10.7f

    const v7, 0x4141999a    # 12.1f

    const v8, 0x415b3333    # 13.7f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1c

    .line 43
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v9, 0x41800000    # 16.0f

    const v10, 0x41926666    # 18.3f

    const v5, 0x411b3333    # 9.7f

    const v6, 0x412e6666    # 10.9f

    const v7, 0x4144cccd    # 12.3f

    const/high16 v8, 0x41600000    # 14.0f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1d

    .line 44
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x4181999a    # 16.2f

    const v10, 0x4195999a    # 18.7f

    const v5, 0x411ccccd    # 9.8f

    const v6, 0x4131999a    # 11.1f

    const/high16 v7, 0x41480000    # 12.5f

    const v8, 0x41633333    # 14.2f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e

    .line 45
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v9, 0x41840000    # 16.5f

    const/high16 v10, 0x41980000    # 19.0f

    const/high16 v5, 0x41200000    # 10.0f

    const v6, 0x41333333    # 11.2f

    const v7, 0x414b3333    # 12.7f

    const v8, 0x41666666    # 14.4f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f

    .line 46
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x41866666    # 16.8f

    const v10, 0x419a6666    # 19.3f

    const/high16 v4, 0x41100000    # 9.0f

    const v5, 0x4121999a    # 10.1f

    const v6, 0x41366666    # 11.4f

    const v7, 0x414e6666    # 12.9f

    const v8, 0x416b3333    # 14.7f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    .line 47
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x4188cccd    # 17.1f

    const v10, 0x419ccccd    # 19.6f

    const v5, 0x4124cccd    # 10.3f

    const v6, 0x4139999a    # 11.6f

    const v7, 0x4151999a    # 13.1f

    const v8, 0x416e6666    # 14.9f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x21

    .line 48
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x418a6666    # 17.3f

    const/high16 v10, 0x41a00000    # 20.0f

    const v5, 0x41266666    # 10.4f

    const v6, 0x413b3333    # 11.7f

    const v7, 0x4154cccd    # 13.3f

    const v8, 0x4171999a    # 15.1f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x22

    .line 49
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x418ccccd    # 17.6f

    const v10, 0x41a26666    # 20.3f

    const/high16 v5, 0x41280000    # 10.5f

    const v6, 0x413e6666    # 11.9f

    const/high16 v7, 0x41580000    # 13.5f

    const v8, 0x41766666    # 15.4f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x23

    .line 50
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x418f3333    # 17.9f

    const v10, 0x41a4cccd    # 20.6f

    const v5, 0x412b3333    # 10.7f

    const/high16 v6, 0x41400000    # 12.0f

    const v7, 0x415b3333    # 13.7f

    const v8, 0x4179999a    # 15.6f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x24

    .line 51
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x4190cccd    # 18.1f

    const v10, 0x41a73333    # 20.9f

    const v5, 0x412ccccd    # 10.8f

    const v6, 0x41433333    # 12.2f

    const v7, 0x415e6666    # 13.9f

    const v8, 0x417ccccd    # 15.8f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x25

    .line 52
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x41933333    # 18.4f

    const v10, 0x41aa6666    # 21.3f

    const v5, 0x412e6666    # 10.9f

    const v6, 0x41466666    # 12.4f

    const/high16 v7, 0x41600000    # 14.0f

    const/high16 v8, 0x41800000    # 16.0f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x26

    .line 53
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x4195999a    # 18.7f

    const v10, 0x41accccd    # 21.6f

    const v5, 0x4131999a    # 11.1f

    const/high16 v6, 0x41480000    # 12.5f

    const v7, 0x41633333    # 14.2f

    const v8, 0x41826666    # 16.3f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x27

    .line 54
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v9, 0x41980000    # 19.0f

    const/high16 v10, 0x41b00000    # 22.0f

    const v5, 0x41333333    # 11.2f

    const v6, 0x414b3333    # 12.7f

    const v7, 0x41666666    # 14.4f

    const/high16 v8, 0x41840000    # 16.5f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x28

    .line 55
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x4199999a    # 19.2f

    const v10, 0x41b26666    # 22.3f

    const/high16 v4, 0x41200000    # 10.0f

    const v5, 0x4134cccd    # 11.3f

    const v6, 0x414ccccd    # 12.8f

    const v7, 0x4169999a    # 14.6f

    const v8, 0x4185999a    # 16.7f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x29

    .line 56
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v9, 0x419c0000    # 19.5f

    const v10, 0x41b5999a    # 22.7f

    const/high16 v5, 0x41380000    # 11.5f

    const/high16 v6, 0x41500000    # 13.0f

    const v7, 0x416ccccd    # 14.8f

    const v8, 0x41873333    # 16.9f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2a

    .line 57
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x419e6666    # 19.8f

    const/high16 v10, 0x41b80000    # 23.0f

    const v5, 0x4139999a    # 11.6f

    const v6, 0x4151999a    # 13.1f

    const/high16 v7, 0x41700000    # 15.0f

    const v8, 0x4189999a    # 17.2f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2b

    .line 58
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x41a0cccd    # 20.1f

    const v10, 0x41bb3333    # 23.4f

    const v5, 0x413b3333    # 11.7f

    const v6, 0x4154cccd    # 13.3f

    const v7, 0x41733333    # 15.2f

    const v8, 0x418b3333    # 17.4f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2c

    .line 59
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v9, 0x41a33333    # 20.4f

    const v10, 0x41bd999a    # 23.7f

    const v5, 0x413ccccd    # 11.8f

    const v6, 0x41566666    # 13.4f

    const v7, 0x4174cccd    # 15.3f

    const v8, 0x418ccccd    # 17.6f

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2d

    .line 60
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v3

    new-instance v12, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v10, 0x41a5999a    # 20.7f

    const v11, 0x41c0cccd    # 24.1f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41400000    # 12.0f

    const v7, 0x4159999a    # 13.6f

    const/high16 v8, 0x41780000    # 15.5f

    const v9, 0x418e6666    # 17.8f

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x2e

    .line 61
    invoke-static {v3, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v11, 0x41a73333    # 20.9f

    const/high16 v12, 0x41c40000    # 24.5f

    const/high16 v6, 0x41200000    # 10.0f

    const v7, 0x4141999a    # 12.1f

    const v8, 0x415b3333    # 13.7f

    const v9, 0x417b3333    # 15.7f

    const v10, 0x4190cccd    # 18.1f

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x2f

    .line 62
    invoke-static {v4, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v14, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v12, 0x41a9999a    # 21.2f

    const v13, 0x41c66666    # 24.8f

    const/high16 v7, 0x41200000    # 10.0f

    const v8, 0x41433333    # 12.2f

    const v9, 0x415e6666    # 13.9f

    const v10, 0x417e6666    # 15.9f

    const v11, 0x41926666    # 18.3f

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x30

    .line 63
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41ac0000    # 21.5f

    const v14, 0x41c9999a    # 25.2f

    const/high16 v8, 0x41200000    # 10.0f

    const v9, 0x4144cccd    # 12.3f

    const/high16 v10, 0x41600000    # 14.0f

    const v11, 0x4180cccd    # 16.1f

    const/high16 v12, 0x41940000    # 18.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x31

    .line 64
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v7

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v14, 0x41ae6666    # 21.8f

    const/high16 v16, 0x41cc0000    # 25.5f

    const/high16 v9, 0x41300000    # 11.0f

    const v10, 0x41466666    # 12.4f

    const v11, 0x41633333    # 14.2f

    const v12, 0x41826666    # 16.3f

    const v13, 0x41966666    # 18.8f

    move-object v8, v15

    move-object v6, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x32

    .line 65
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41b0cccd    # 22.1f

    const v14, 0x41cf3333    # 25.9f

    const/high16 v8, 0x41300000    # 11.0f

    const v9, 0x4149999a    # 12.6f

    const v10, 0x4164cccd    # 14.3f

    const v11, 0x41833333    # 16.4f

    const/high16 v12, 0x41980000    # 19.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x33

    .line 66
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41b33333    # 22.4f

    const v14, 0x41d26666    # 26.3f

    const v9, 0x414b3333    # 12.7f

    const/high16 v10, 0x41680000    # 14.5f

    const v11, 0x4184cccd    # 16.6f

    const v12, 0x4199999a    # 19.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x34

    .line 67
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41b4cccd    # 22.6f

    const v14, 0x41d4cccd    # 26.6f

    const v9, 0x414ccccd    # 12.8f

    const v10, 0x4169999a    # 14.6f

    const v11, 0x41866666    # 16.8f

    const v12, 0x419b3333    # 19.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x35

    .line 68
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41b73333    # 22.9f

    const/high16 v14, 0x41d80000    # 27.0f

    const v9, 0x414e6666    # 12.9f

    const v10, 0x416ccccd    # 14.8f

    const/high16 v11, 0x41880000    # 17.0f

    const v12, 0x419d999a    # 19.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x36

    .line 69
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41b9999a    # 23.2f

    const v14, 0x41db3333    # 27.4f

    const/high16 v9, 0x41500000    # 13.0f

    const v10, 0x416e6666    # 14.9f

    const v11, 0x4189999a    # 17.2f

    const v12, 0x419f3333    # 19.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x37

    .line 70
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41bc0000    # 23.5f

    const v14, 0x41dd999a    # 27.7f

    const v9, 0x41533333    # 13.2f

    const v10, 0x4171999a    # 15.1f

    const v11, 0x418a6666    # 17.3f

    const v12, 0x41a0cccd    # 20.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x38

    .line 71
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41be6666    # 23.8f

    const v14, 0x41e0cccd    # 28.1f

    const v9, 0x4154cccd    # 13.3f

    const v10, 0x41733333    # 15.2f

    const/high16 v11, 0x418c0000    # 17.5f

    const v12, 0x41a26666    # 20.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x39

    .line 72
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41c0cccd    # 24.1f

    const/high16 v14, 0x41e40000    # 28.5f

    const v9, 0x41566666    # 13.4f

    const v10, 0x4174cccd    # 15.3f

    const v11, 0x418d999a    # 17.7f

    const v12, 0x41a4cccd    # 20.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x3a

    .line 73
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41c33333    # 24.4f

    const v14, 0x41e66666    # 28.8f

    const/high16 v9, 0x41580000    # 13.5f

    const/high16 v10, 0x41780000    # 15.5f

    const v11, 0x418f3333    # 17.9f

    const v12, 0x41a66666    # 20.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x3b

    .line 74
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41c4cccd    # 24.6f

    const v14, 0x41e9999a    # 29.2f

    const/high16 v8, 0x41400000    # 12.0f

    const v9, 0x4159999a    # 13.6f

    const v10, 0x4179999a    # 15.6f

    const/high16 v11, 0x41900000    # 18.0f

    const/high16 v12, 0x41a80000    # 21.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x3c

    .line 75
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41c73333    # 24.9f

    const/high16 v14, 0x41ec0000    # 29.5f

    const v9, 0x415b3333    # 13.7f

    const v10, 0x417ccccd    # 15.8f

    const v11, 0x4191999a    # 18.2f

    const v12, 0x41a9999a    # 21.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x3d

    .line 76
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41c66666    # 24.8f

    const/high16 v9, 0x41600000    # 14.0f

    const v10, 0x417e6666    # 15.9f

    const v11, 0x41926666    # 18.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x3e

    .line 77
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41c8cccd    # 25.1f

    const v14, 0x41ee6666    # 29.8f

    const v9, 0x4161999a    # 14.1f

    const/high16 v10, 0x41800000    # 16.0f

    const v11, 0x41933333    # 18.4f

    const v12, 0x41ab3333    # 21.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x3f

    .line 78
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41cb3333    # 25.4f

    const v14, 0x41f1999a    # 30.2f

    const v9, 0x41633333    # 14.2f

    const v10, 0x4181999a    # 16.2f

    const v11, 0x4194cccd    # 18.6f

    const v12, 0x41accccd    # 21.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x40

    .line 79
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41cccccd    # 25.6f

    const/high16 v14, 0x41f40000    # 30.5f

    const v9, 0x4164cccd    # 14.3f

    const v10, 0x41826666    # 16.3f

    const v11, 0x41966666    # 18.8f

    const v12, 0x41ae6666    # 21.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x41

    .line 80
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41cf3333    # 25.9f

    const v14, 0x41f73333    # 30.9f

    const v9, 0x41666666    # 14.4f

    const/high16 v10, 0x41840000    # 16.5f

    const/high16 v11, 0x41980000    # 19.0f

    const/high16 v12, 0x41b00000    # 22.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x42

    .line 81
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41d1999a    # 26.2f

    const v14, 0x41fa6666    # 31.3f

    const v9, 0x4169999a    # 14.6f

    const v10, 0x4184cccd    # 16.6f

    const v11, 0x4198cccd    # 19.1f

    const v12, 0x41b1999a    # 22.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x43

    .line 82
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41d40000    # 26.5f

    const v14, 0x41fccccd    # 31.6f

    const/high16 v8, 0x41500000    # 13.0f

    const v9, 0x416b3333    # 14.7f

    const v10, 0x41866666    # 16.8f

    const v11, 0x419a6666    # 19.3f

    const/high16 v12, 0x41b40000    # 22.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x44

    .line 83
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41d5999a    # 26.7f

    const/high16 v14, 0x42000000    # 32.0f

    const v9, 0x416ccccd    # 14.8f

    const v10, 0x41873333    # 16.9f

    const/high16 v11, 0x419c0000    # 19.5f

    const v12, 0x41b5999a    # 22.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x45

    .line 84
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41d80000    # 27.0f

    const v14, 0x42013333    # 32.3f

    const v9, 0x416e6666    # 14.9f

    const/high16 v10, 0x41880000    # 17.0f

    const v11, 0x419ccccd    # 19.6f

    const v12, 0x41b73333    # 22.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {v2, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41da6666    # 27.3f

    const v14, 0x4202cccd    # 32.7f

    const/high16 v9, 0x41700000    # 15.0f

    const v10, 0x4189999a    # 17.2f

    const v11, 0x419e6666    # 19.8f

    const v12, 0x41b8cccd    # 23.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x47

    .line 86
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41dccccd    # 27.6f

    const v14, 0x42046666    # 33.1f

    const v9, 0x41733333    # 15.2f

    const v10, 0x418a6666    # 17.3f

    const/high16 v11, 0x41a00000    # 20.0f

    const v12, 0x41ba6666    # 23.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x48

    .line 87
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41de6666    # 27.8f

    const v14, 0x4205999a    # 33.4f

    const v9, 0x4174cccd    # 15.3f

    const/high16 v10, 0x418c0000    # 17.5f

    const v11, 0x41a1999a    # 20.2f

    const/high16 v12, 0x41bc0000    # 23.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x49

    .line 88
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41e0cccd    # 28.1f

    const v14, 0x42073333    # 33.8f

    const v9, 0x41766666    # 15.4f

    const v10, 0x418ccccd    # 17.6f

    const v11, 0x41a26666    # 20.3f

    const v12, 0x41be6666    # 23.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x4a

    .line 89
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41e33333    # 28.4f

    const v14, 0x4208cccd    # 34.2f

    const/high16 v9, 0x41780000    # 15.5f

    const v10, 0x418e6666    # 17.8f

    const/high16 v11, 0x41a40000    # 20.5f

    const/high16 v12, 0x41c00000    # 24.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x4b

    .line 90
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41e5999a    # 28.7f

    const v14, 0x420a6666    # 34.6f

    const v9, 0x4179999a    # 15.6f

    const v10, 0x418f3333    # 17.9f

    const v11, 0x41a5999a    # 20.7f

    const v12, 0x41c1999a    # 24.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x4c

    .line 91
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41e80000    # 29.0f

    const/high16 v14, 0x420c0000    # 35.0f

    const v9, 0x417ccccd    # 15.8f

    const/high16 v10, 0x41900000    # 18.0f

    const v11, 0x41a73333    # 20.9f

    const v12, 0x41c33333    # 24.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x4d

    .line 92
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v7

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v14, 0x41ea6666    # 29.3f

    const v16, 0x420d999a    # 35.4f

    const/high16 v9, 0x41600000    # 14.0f

    const v10, 0x417e6666    # 15.9f

    const v11, 0x4191999a    # 18.2f

    const/high16 v12, 0x41a80000    # 21.0f

    const v13, 0x41c4cccd    # 24.6f

    move-object v8, v15

    move-object v5, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4e

    .line 93
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41eccccd    # 29.6f

    const v14, 0x420f3333    # 35.8f

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v9, 0x41800000    # 16.0f

    const v10, 0x41926666    # 18.3f

    const v11, 0x41a9999a    # 21.2f

    const v12, 0x41c73333    # 24.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4f

    .line 94
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41ef3333    # 29.9f

    const v14, 0x4210cccd    # 36.2f

    const v9, 0x4180cccd    # 16.1f

    const/high16 v10, 0x41940000    # 18.5f

    const v11, 0x41ab3333    # 21.4f

    const v12, 0x41c8cccd    # 25.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x50

    .line 95
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41f1999a    # 30.2f

    const v14, 0x42126666    # 36.6f

    const v9, 0x41826666    # 16.3f

    const v10, 0x4194cccd    # 18.6f

    const v11, 0x41accccd    # 21.6f

    const v12, 0x41ca6666    # 25.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x51

    .line 96
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41f40000    # 30.5f

    const/high16 v14, 0x42140000    # 37.0f

    const v9, 0x41833333    # 16.4f

    const v10, 0x41966666    # 18.8f

    const v11, 0x41ae6666    # 21.8f

    const v12, 0x41cccccd    # 25.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x52

    .line 97
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41f66666    # 30.8f

    const v14, 0x4215999a    # 37.4f

    const/high16 v9, 0x41840000    # 16.5f

    const v10, 0x41973333    # 18.9f

    const/high16 v11, 0x41b00000    # 22.0f

    const v12, 0x41ce6666    # 25.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x53

    .line 98
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41f8cccd    # 31.1f

    const v14, 0x42173333    # 37.8f

    const v9, 0x4184cccd    # 16.6f

    const v10, 0x4198cccd    # 19.1f

    const v11, 0x41b1999a    # 22.2f

    const v12, 0x41d0cccd    # 26.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 102
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x408ccccd    # 4.4f

    const/high16 v14, 0x40a00000    # 5.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x40200000    # 2.5f

    const v10, 0x4039999a    # 2.9f

    const v11, 0x40533333    # 3.3f

    const v12, 0x4079999a    # 3.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    .line 103
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x40b9999a    # 5.8f

    const v14, 0x40d33333    # 6.6f

    const v9, 0x4059999a    # 3.4f

    const v10, 0x4079999a    # 3.9f

    const/high16 v11, 0x40900000    # 4.5f

    const v12, 0x40a33333    # 5.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    .line 104
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x40e33333    # 7.1f

    const/high16 v14, 0x41000000    # 8.0f

    const/high16 v8, 0x40400000    # 3.0f

    const v9, 0x4089999a    # 4.3f

    const v10, 0x409ccccd    # 4.9f

    const v11, 0x40b33333    # 5.6f

    const v12, 0x40c9999a    # 6.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    .line 105
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41000000    # 8.0f

    const/high16 v14, 0x41100000    # 9.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const v10, 0x40b66666    # 5.7f

    const v11, 0x40cccccd    # 6.4f

    const v12, 0x40e66666    # 7.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x4

    .line 106
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x410b3333    # 8.7f

    const v14, 0x411b3333    # 9.7f

    const v9, 0x40b33333    # 5.6f

    const v10, 0x40c66666    # 6.2f

    const/high16 v11, 0x40e00000    # 7.0f

    const v12, 0x40f9999a    # 7.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x5

    .line 107
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4114cccd    # 9.3f

    const v14, 0x41266666    # 10.4f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const v10, 0x40d66666    # 6.7f

    const/high16 v11, 0x40f00000    # 7.5f

    const v12, 0x41066666    # 8.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x6

    .line 108
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x411ccccd    # 9.8f

    const v14, 0x412e6666    # 10.9f

    const v9, 0x40cccccd    # 6.4f

    const v10, 0x40e33333    # 7.1f

    const v11, 0x40fccccd    # 7.9f

    const v12, 0x410ccccd    # 8.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x7

    .line 109
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4124cccd    # 10.3f

    const v14, 0x41366666    # 11.4f

    const v9, 0x40d66666    # 6.7f

    const v10, 0x40eccccd    # 7.4f

    const v11, 0x4104cccd    # 8.3f

    const v12, 0x41133333    # 9.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x8

    .line 110
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x412b3333    # 10.7f

    const v14, 0x413e6666    # 11.9f

    const/high16 v8, 0x40c00000    # 6.0f

    const v9, 0x40dccccd    # 6.9f

    const v10, 0x40f66666    # 7.7f

    const v11, 0x4109999a    # 8.6f

    const v12, 0x4119999a    # 9.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x9

    .line 111
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41300000    # 11.0f

    const v14, 0x4144cccd    # 12.3f

    const v9, 0x40e33333    # 7.1f

    const/high16 v10, 0x41000000    # 8.0f

    const v11, 0x410e6666    # 8.9f

    const v12, 0x411e6666    # 9.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xa

    .line 112
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41366666    # 11.4f

    const v14, 0x414b3333    # 12.7f

    const v9, 0x40eccccd    # 7.4f

    const v10, 0x41033333    # 8.2f

    const v11, 0x41133333    # 9.2f

    const v12, 0x41233333    # 10.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xb

    .line 113
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x413b3333    # 11.7f

    const/high16 v14, 0x41500000    # 13.0f

    const v9, 0x40f33333    # 7.6f

    const v10, 0x41066666    # 8.4f

    const v11, 0x41166666    # 9.4f

    const/high16 v12, 0x41280000    # 10.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xc

    .line 114
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41400000    # 12.0f

    const v14, 0x4154cccd    # 13.3f

    const v9, 0x40f66666    # 7.7f

    const v10, 0x4109999a    # 8.6f

    const v11, 0x4119999a    # 9.6f

    const v12, 0x412ccccd    # 10.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xd

    .line 115
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4144cccd    # 12.3f

    const v14, 0x415b3333    # 13.7f

    const/high16 v8, 0x40e00000    # 7.0f

    const v9, 0x40fccccd    # 7.9f

    const v10, 0x410ccccd    # 8.8f

    const v11, 0x411e6666    # 9.9f

    const/high16 v12, 0x41300000    # 11.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xe

    .line 116
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4149999a    # 12.6f

    const/high16 v14, 0x41600000    # 14.0f

    const v9, 0x4101999a    # 8.1f

    const/high16 v10, 0x41100000    # 9.0f

    const v11, 0x4121999a    # 10.1f

    const v12, 0x4134cccd    # 11.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xf

    .line 117
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x414ccccd    # 12.8f

    const v14, 0x4164cccd    # 14.3f

    const v9, 0x4104cccd    # 8.3f

    const v10, 0x41133333    # 9.2f

    const v11, 0x4124cccd    # 10.3f

    const/high16 v12, 0x41380000    # 11.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x10

    .line 118
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4151999a    # 13.1f

    const v14, 0x4169999a    # 14.6f

    const v9, 0x41066666    # 8.4f

    const v10, 0x41166666    # 9.4f

    const/high16 v11, 0x41280000    # 10.5f

    const v12, 0x413b3333    # 11.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x11

    .line 119
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41566666    # 13.4f

    const v14, 0x416e6666    # 14.9f

    const v9, 0x4109999a    # 8.6f

    const v10, 0x4119999a    # 9.6f

    const v11, 0x412b3333    # 10.7f

    const/high16 v12, 0x41400000    # 12.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x12

    .line 120
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x415b3333    # 13.7f

    const v14, 0x4174cccd    # 15.3f

    const v9, 0x410ccccd    # 8.8f

    const v10, 0x411ccccd    # 9.8f

    const v11, 0x412e6666    # 10.9f

    const v12, 0x41433333    # 12.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x13

    .line 121
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x415e6666    # 13.9f

    const v14, 0x4179999a    # 15.6f

    const/high16 v8, 0x41000000    # 8.0f

    const v9, 0x410e6666    # 8.9f

    const/high16 v10, 0x41200000    # 10.0f

    const v11, 0x4131999a    # 11.1f

    const/high16 v12, 0x41480000    # 12.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x14

    .line 122
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41633333    # 14.2f

    const v14, 0x417e6666    # 15.9f

    const v9, 0x4111999a    # 9.1f

    const v10, 0x4121999a    # 10.1f

    const v11, 0x4134cccd    # 11.3f

    const v12, 0x414b3333    # 12.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x15

    .line 123
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41680000    # 14.5f

    const v14, 0x4181999a    # 16.2f

    const v9, 0x41133333    # 9.2f

    const v10, 0x4124cccd    # 10.3f

    const/high16 v11, 0x41380000    # 11.5f

    const v12, 0x414e6666    # 12.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x16

    .line 124
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x416b3333    # 14.7f

    const/high16 v14, 0x41840000    # 16.5f

    const v9, 0x41166666    # 9.4f

    const/high16 v10, 0x41280000    # 10.5f

    const v11, 0x413ccccd    # 11.8f

    const v12, 0x41533333    # 13.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x17

    .line 125
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41700000    # 15.0f

    const v14, 0x41866666    # 16.8f

    const/high16 v9, 0x41180000    # 9.5f

    const v10, 0x412b3333    # 10.7f

    const/high16 v11, 0x41400000    # 12.0f

    const v12, 0x41566666    # 13.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x18

    .line 126
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4174cccd    # 15.3f

    const v14, 0x4188cccd    # 17.1f

    const v9, 0x411b3333    # 9.7f

    const v10, 0x412ccccd    # 10.8f

    const v11, 0x41433333    # 12.2f

    const v12, 0x4159999a    # 13.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x19

    .line 127
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41780000    # 15.5f

    const/high16 v14, 0x418c0000    # 17.5f

    const v9, 0x411ccccd    # 9.8f

    const/high16 v10, 0x41300000    # 11.0f

    const v11, 0x41466666    # 12.4f

    const v12, 0x415e6666    # 13.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1a

    .line 128
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x417ccccd    # 15.8f

    const v14, 0x418e6666    # 17.8f

    const/high16 v9, 0x41200000    # 10.0f

    const v10, 0x41333333    # 11.2f

    const/high16 v11, 0x41480000    # 12.5f

    const v12, 0x4161999a    # 14.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1b

    .line 129
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4180cccd    # 16.1f

    const v14, 0x4190cccd    # 18.1f

    const/high16 v8, 0x41100000    # 9.0f

    const v9, 0x4121999a    # 10.1f

    const v10, 0x4134cccd    # 11.3f

    const v11, 0x414b3333    # 12.7f

    const v12, 0x4164cccd    # 14.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1c

    .line 130
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41826666    # 16.3f

    const v14, 0x41933333    # 18.4f

    const v9, 0x41233333    # 10.2f

    const/high16 v10, 0x41380000    # 11.5f

    const v11, 0x414e6666    # 12.9f

    const/high16 v12, 0x41680000    # 14.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1d

    .line 131
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4184cccd    # 16.6f

    const v14, 0x4195999a    # 18.7f

    const v9, 0x41266666    # 10.4f

    const v10, 0x413b3333    # 11.7f

    const v11, 0x4151999a    # 13.1f

    const v12, 0x416ccccd    # 14.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1e

    .line 132
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41873333    # 16.9f

    const/high16 v14, 0x41980000    # 19.0f

    const/high16 v9, 0x41280000    # 10.5f

    const v10, 0x413ccccd    # 11.8f

    const v11, 0x4154cccd    # 13.3f

    const/high16 v12, 0x41700000    # 15.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1f

    .line 133
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4188cccd    # 17.1f

    const v14, 0x419a6666    # 19.3f

    const v9, 0x412b3333    # 10.7f

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x41580000    # 13.5f

    const v12, 0x41733333    # 15.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x20

    .line 134
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x418b3333    # 17.4f

    const v14, 0x419ccccd    # 19.6f

    const v9, 0x412ccccd    # 10.8f

    const v10, 0x4141999a    # 12.1f

    const v11, 0x415b3333    # 13.7f

    const v12, 0x41766666    # 15.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x21

    .line 135
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x418ccccd    # 17.6f

    const v14, 0x419f3333    # 19.9f

    const v9, 0x412e6666    # 10.9f

    const v10, 0x4144cccd    # 12.3f

    const v11, 0x415ccccd    # 13.8f

    const v12, 0x4179999a    # 15.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x22

    .line 136
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x418e6666    # 17.8f

    const v14, 0x41a1999a    # 20.2f

    const/high16 v9, 0x41300000    # 11.0f

    const v10, 0x41466666    # 12.4f

    const/high16 v11, 0x41600000    # 14.0f

    const v12, 0x417ccccd    # 15.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x23

    .line 137
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4190cccd    # 18.1f

    const v14, 0x41a33333    # 20.4f

    const v9, 0x41333333    # 11.2f

    const v10, 0x4149999a    # 12.6f

    const v11, 0x41633333    # 14.2f

    const/high16 v12, 0x41800000    # 16.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x24

    .line 138
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41926666    # 18.3f

    const v14, 0x41a5999a    # 20.7f

    const/high16 v8, 0x41200000    # 10.0f

    const v9, 0x4134cccd    # 11.3f

    const v10, 0x414b3333    # 12.7f

    const v11, 0x4164cccd    # 14.3f

    const v12, 0x4181999a    # 16.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x25

    .line 139
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4194cccd    # 18.6f

    const/high16 v14, 0x41a80000    # 21.0f

    const v9, 0x41366666    # 11.4f

    const v10, 0x414e6666    # 12.9f

    const/high16 v11, 0x41680000    # 14.5f

    const v12, 0x41833333    # 16.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x26

    .line 140
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41966666    # 18.8f

    const v14, 0x41aa6666    # 21.3f

    const/high16 v9, 0x41380000    # 11.5f

    const/high16 v10, 0x41500000    # 13.0f

    const v11, 0x416b3333    # 14.7f

    const v12, 0x4184cccd    # 16.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x27

    .line 141
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41980000    # 19.0f

    const v14, 0x41accccd    # 21.6f

    const v9, 0x4139999a    # 11.6f

    const v10, 0x4151999a    # 13.1f

    const v11, 0x416ccccd    # 14.8f

    const v12, 0x41866666    # 16.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x28

    .line 142
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x419a6666    # 19.3f

    const v14, 0x41af3333    # 21.9f

    const v9, 0x413ccccd    # 11.8f

    const v10, 0x4154cccd    # 13.3f

    const/high16 v11, 0x41700000    # 15.0f

    const/high16 v12, 0x41880000    # 17.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x29

    .line 143
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x419c0000    # 19.5f

    const v14, 0x41b0cccd    # 22.1f

    const v9, 0x413e6666    # 11.9f

    const v10, 0x41566666    # 13.4f

    const v11, 0x41733333    # 15.2f

    const v12, 0x4189999a    # 17.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2a

    .line 144
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x419d999a    # 19.7f

    const v14, 0x41b33333    # 22.4f

    const/high16 v9, 0x41400000    # 12.0f

    const v10, 0x4159999a    # 13.6f

    const v11, 0x4174cccd    # 15.3f

    const v12, 0x418b3333    # 17.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2b

    .line 145
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41a00000    # 20.0f

    const v14, 0x41b5999a    # 22.7f

    const v9, 0x4141999a    # 12.1f

    const v10, 0x415b3333    # 13.7f

    const/high16 v11, 0x41780000    # 15.5f

    const v12, 0x418ccccd    # 17.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2c

    .line 146
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41a1999a    # 20.2f

    const/high16 v14, 0x41b80000    # 23.0f

    const v9, 0x41433333    # 12.2f

    const v10, 0x415ccccd    # 13.8f

    const v11, 0x417b3333    # 15.7f

    const v12, 0x418e6666    # 17.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41a40000    # 20.5f

    const v14, 0x41ba6666    # 23.3f

    const v9, 0x41466666    # 12.4f

    const/high16 v10, 0x41600000    # 14.0f

    const v11, 0x417ccccd    # 15.8f

    const/high16 v12, 0x41900000    # 18.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {v3, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41a5999a    # 20.7f

    const v14, 0x41bccccd    # 23.6f

    const/high16 v8, 0x41300000    # 11.0f

    const/high16 v9, 0x41480000    # 12.5f

    const v10, 0x4161999a    # 14.1f

    const/high16 v11, 0x41800000    # 16.0f

    const v12, 0x4191999a    # 18.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41a73333    # 20.9f

    const v14, 0x41bf3333    # 23.9f

    const v9, 0x4149999a    # 12.6f

    const v10, 0x4164cccd    # 14.3f

    const v11, 0x4181999a    # 16.2f

    const v12, 0x41933333    # 18.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x30

    .line 150
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v7

    new-instance v5, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v14, 0x41a9999a    # 21.2f

    const v15, 0x41c1999a    # 24.2f

    const/high16 v9, 0x41300000    # 11.0f

    const v10, 0x414b3333    # 12.7f

    const v11, 0x41666666    # 14.4f

    const v12, 0x41826666    # 16.3f

    const v13, 0x4194cccd    # 18.6f

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x31

    .line 151
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v7

    new-instance v5, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v14, 0x41ab3333    # 21.4f

    const/high16 v15, 0x41c40000    # 24.5f

    const v10, 0x414ccccd    # 12.8f

    const/high16 v11, 0x41680000    # 14.5f

    const/high16 v12, 0x41840000    # 16.5f

    const v13, 0x41966666    # 18.8f

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x32

    .line 152
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41ad999a    # 21.7f

    const v14, 0x41c66666    # 24.8f

    const/high16 v8, 0x41300000    # 11.0f

    const v9, 0x414e6666    # 12.9f

    const v10, 0x416b3333    # 14.7f

    const v11, 0x4185999a    # 16.7f

    const/high16 v12, 0x41980000    # 19.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x33

    .line 153
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41af3333    # 21.9f

    const v14, 0x41c8cccd    # 25.1f

    const v9, 0x4151999a    # 13.1f

    const v10, 0x416ccccd    # 14.8f

    const v11, 0x41866666    # 16.8f

    const v12, 0x4199999a    # 19.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x34

    .line 154
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41b1999a    # 22.2f

    const v14, 0x41cb3333    # 25.4f

    const v9, 0x41533333    # 13.2f

    const/high16 v10, 0x41700000    # 15.0f

    const/high16 v11, 0x41880000    # 17.0f

    const v12, 0x419b3333    # 19.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x35

    .line 155
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41b33333    # 22.4f

    const v14, 0x41cd999a    # 25.7f

    const v9, 0x4154cccd    # 13.3f

    const v10, 0x4171999a    # 15.1f

    const v11, 0x4189999a    # 17.2f

    const v12, 0x419ccccd    # 19.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x36

    .line 156
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41b5999a    # 22.7f

    const/high16 v14, 0x41d00000    # 26.0f

    const v9, 0x41566666    # 13.4f

    const v10, 0x41733333    # 15.2f

    const v11, 0x418a6666    # 17.3f

    const v12, 0x419e6666    # 19.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x37

    .line 157
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41b73333    # 22.9f

    const v14, 0x41d26666    # 26.3f

    const/high16 v9, 0x41580000    # 13.5f

    const v10, 0x41766666    # 15.4f

    const/high16 v11, 0x418c0000    # 17.5f

    const/high16 v12, 0x41a00000    # 20.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x38

    .line 158
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41b9999a    # 23.2f

    const v14, 0x41d4cccd    # 26.6f

    const/high16 v8, 0x41400000    # 12.0f

    const v9, 0x4159999a    # 13.6f

    const/high16 v10, 0x41780000    # 15.5f

    const v11, 0x418d999a    # 17.7f

    const v12, 0x41a1999a    # 20.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x39

    .line 159
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41bb3333    # 23.4f

    const v14, 0x41d73333    # 26.9f

    const v9, 0x415b3333    # 13.7f

    const v10, 0x4179999a    # 15.6f

    const v11, 0x418e6666    # 17.8f

    const v12, 0x41a33333    # 20.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3a

    .line 160
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41bd999a    # 23.7f

    const v14, 0x41d9999a    # 27.2f

    const v9, 0x415ccccd    # 13.8f

    const v10, 0x417ccccd    # 15.8f

    const/high16 v11, 0x41900000    # 18.0f

    const v12, 0x41a4cccd    # 20.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3b

    .line 161
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41bf3333    # 23.9f

    const v14, 0x41dccccd    # 27.6f

    const/high16 v9, 0x41600000    # 14.0f

    const v10, 0x417e6666    # 15.9f

    const v11, 0x4191999a    # 18.2f

    const v12, 0x41a66666    # 20.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3c

    .line 162
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41c1999a    # 24.2f

    const v14, 0x41df3333    # 27.9f

    const v9, 0x4161999a    # 14.1f

    const/high16 v10, 0x41800000    # 16.0f

    const v11, 0x41926666    # 18.3f

    const/high16 v12, 0x41a80000    # 21.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3d

    .line 163
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v14, 0x41de6666    # 27.8f

    const v9, 0x41666666    # 14.4f

    const v10, 0x41826666    # 16.3f

    const/high16 v11, 0x41940000    # 18.5f

    const v12, 0x41a8cccd    # 21.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3e

    .line 164
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41c33333    # 24.4f

    const v14, 0x41e0cccd    # 28.1f

    const/high16 v9, 0x41680000    # 14.5f

    const v10, 0x41833333    # 16.4f

    const v11, 0x4195999a    # 18.7f

    const v12, 0x41aa6666    # 21.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3f

    .line 165
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41c5999a    # 24.7f

    const v14, 0x41e33333    # 28.4f

    const/high16 v8, 0x41500000    # 13.0f

    const v9, 0x4169999a    # 14.6f

    const v10, 0x4184cccd    # 16.6f

    const v11, 0x41973333    # 18.9f

    const/high16 v12, 0x41ac0000    # 21.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x40

    .line 166
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41c73333    # 24.9f

    const v14, 0x41e66666    # 28.8f

    const v9, 0x416ccccd    # 14.8f

    const v10, 0x4185999a    # 16.7f

    const/high16 v11, 0x41980000    # 19.0f

    const v12, 0x41ad999a    # 21.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x41

    .line 167
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41c9999a    # 25.2f

    const v14, 0x41e8cccd    # 29.1f

    const v9, 0x416e6666    # 14.9f

    const v10, 0x41873333    # 16.9f

    const v11, 0x4199999a    # 19.2f

    const/high16 v12, 0x41b00000    # 22.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x42

    .line 168
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41cc0000    # 25.5f

    const v14, 0x41eb3333    # 29.4f

    const/high16 v9, 0x41700000    # 15.0f

    const/high16 v10, 0x41880000    # 17.0f

    const v11, 0x419b3333    # 19.4f

    const v12, 0x41b1999a    # 22.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x43

    .line 169
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41cd999a    # 25.7f

    const v14, 0x41ee6666    # 29.8f

    const v9, 0x41733333    # 15.2f

    const v10, 0x4189999a    # 17.2f

    const v11, 0x419ccccd    # 19.6f

    const v12, 0x41b33333    # 22.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x44

    .line 170
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41d00000    # 26.0f

    const v14, 0x41f0cccd    # 30.1f

    const v9, 0x4174cccd    # 15.3f

    const v10, 0x418b3333    # 17.4f

    const v11, 0x419e6666    # 19.8f

    const v12, 0x41b4cccd    # 22.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x45

    .line 171
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41d26666    # 26.3f

    const v14, 0x41f33333    # 30.4f

    const v9, 0x41766666    # 15.4f

    const/high16 v10, 0x418c0000    # 17.5f

    const v11, 0x419f3333    # 19.9f

    const v12, 0x41b66666    # 22.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {v2, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41d4cccd    # 26.6f

    const v14, 0x41f66666    # 30.8f

    const v9, 0x4179999a    # 15.6f

    const v10, 0x418d999a    # 17.7f

    const v11, 0x41a0cccd    # 20.1f

    const v12, 0x41b8cccd    # 23.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x47

    .line 173
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41d66666    # 26.8f

    const v14, 0x41f9999a    # 31.2f

    const v9, 0x417b3333    # 15.7f

    const v10, 0x418e6666    # 17.8f

    const v11, 0x41a26666    # 20.3f

    const v12, 0x41ba6666    # 23.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x48

    .line 174
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41d8cccd    # 27.1f

    const/high16 v14, 0x41fc0000    # 31.5f

    const/high16 v8, 0x41600000    # 14.0f

    const v9, 0x417e6666    # 15.9f

    const/high16 v10, 0x41900000    # 18.0f

    const/high16 v11, 0x41a40000    # 20.5f

    const/high16 v12, 0x41bc0000    # 23.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x49

    .line 175
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41db3333    # 27.4f

    const v14, 0x41ff3333    # 31.9f

    const/high16 v9, 0x41800000    # 16.0f

    const v10, 0x4191999a    # 18.2f

    const v11, 0x41a5999a    # 20.7f

    const v12, 0x41bd999a    # 23.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4a

    .line 176
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41dd999a    # 27.7f

    const v14, 0x4200cccd    # 32.2f

    const v9, 0x4181999a    # 16.2f

    const v10, 0x41926666    # 18.3f

    const v11, 0x41a73333    # 20.9f

    const/high16 v12, 0x41c00000    # 24.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4b

    .line 177
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41e00000    # 28.0f

    const v14, 0x42026666    # 32.6f

    const v9, 0x41826666    # 16.3f

    const/high16 v10, 0x41940000    # 18.5f

    const v11, 0x41a8cccd    # 21.1f

    const v12, 0x41c1999a    # 24.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4c

    .line 178
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41e26666    # 28.3f

    const/high16 v14, 0x42040000    # 33.0f

    const/high16 v9, 0x41840000    # 16.5f

    const v10, 0x4195999a    # 18.7f

    const v11, 0x41aa6666    # 21.3f

    const v12, 0x41c33333    # 24.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {v6, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41e4cccd    # 28.6f

    const v14, 0x42053333    # 33.3f

    const v9, 0x4184cccd    # 16.6f

    const v10, 0x41966666    # 18.8f

    const/high16 v11, 0x41ac0000    # 21.5f

    const v12, 0x41c5999a    # 24.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4e

    .line 180
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41e73333    # 28.9f

    const v14, 0x4206cccd    # 33.7f

    const v9, 0x41866666    # 16.8f

    const/high16 v10, 0x41980000    # 19.0f

    const v11, 0x41ad999a    # 21.7f

    const v12, 0x41c73333    # 24.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4f

    .line 181
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41e9999a    # 29.2f

    const v14, 0x42086666    # 34.1f

    const/high16 v8, 0x41700000    # 15.0f

    const v9, 0x41873333    # 16.9f

    const v10, 0x4199999a    # 19.2f

    const v11, 0x41af3333    # 21.9f

    const v12, 0x41c9999a    # 25.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x50

    .line 182
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x41ec0000    # 29.5f

    const/high16 v14, 0x420a0000    # 34.5f

    const v9, 0x4188cccd    # 17.1f

    const v10, 0x419a6666    # 19.3f

    const v11, 0x41b0cccd    # 22.1f

    const v12, 0x41cb3333    # 25.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x51

    .line 183
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41ee6666    # 29.8f

    const v14, 0x420b999a    # 34.9f

    const v9, 0x4189999a    # 17.2f

    const/high16 v10, 0x419c0000    # 19.5f

    const v11, 0x41b26666    # 22.3f

    const v12, 0x41cccccd    # 25.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x52

    .line 184
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41f0cccd    # 30.1f

    const v14, 0x420d3333    # 35.3f

    const v9, 0x418b3333    # 17.4f

    const v10, 0x419d999a    # 19.7f

    const/high16 v11, 0x41b40000    # 22.5f

    const v12, 0x41cf3333    # 25.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x53

    .line 185
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x41f33333    # 30.4f

    const v14, 0x420ecccd    # 35.7f

    const/high16 v9, 0x418c0000    # 17.5f

    const v10, 0x419f3333    # 19.9f

    const v11, 0x41b5999a    # 22.7f

    const v12, 0x41d0cccd    # 26.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionMaps;->HFA_MAP:Ljava/util/Map;

    const/4 v5, 0x0

    .line 191
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4253999a    # 52.9f

    const v14, 0x425acccd    # 54.7f

    const v8, 0x422e6666    # 43.6f

    const v9, 0x4235999a    # 45.4f

    const v10, 0x423d3333    # 47.3f

    const v11, 0x42446666    # 49.1f

    const/high16 v12, 0x424c0000    # 51.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    .line 192
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42666666    # 57.6f

    const/high16 v14, 0x426e0000    # 59.5f

    const v8, 0x423f3333    # 47.8f

    const v9, 0x42473333    # 49.8f

    const v10, 0x424ecccd    # 51.7f

    const v11, 0x4256cccd    # 53.7f

    const v12, 0x425e6666    # 55.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    .line 193
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42746666    # 61.1f

    const v14, 0x427ccccd    # 63.2f

    const/high16 v8, 0x424c0000    # 51.0f

    const/high16 v9, 0x42540000    # 53.0f

    const/high16 v10, 0x425c0000    # 55.0f

    const v11, 0x42646666    # 57.1f

    const v12, 0x426c6666    # 59.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    .line 194
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42800000    # 64.0f

    const v14, 0x42843333    # 66.1f

    const/high16 v8, 0x42560000    # 53.5f

    const v9, 0x425e6666    # 55.6f

    const v10, 0x4266cccd    # 57.7f

    const v11, 0x426f3333    # 59.8f

    const v12, 0x4277999a    # 61.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x4

    .line 195
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4284cccd    # 66.4f

    const v14, 0x42893333    # 68.6f

    const v8, 0x425e6666    # 55.6f

    const v9, 0x42673333    # 57.8f

    const v10, 0x426f999a    # 59.9f

    const v11, 0x42786666    # 62.1f

    const v12, 0x4280999a    # 64.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x5

    .line 196
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42890000    # 68.5f

    const v14, 0x428d6666    # 70.7f

    const v8, 0x4265999a    # 57.4f

    const v9, 0x426e6666    # 59.6f

    const v10, 0x42773333    # 61.8f

    const/high16 v11, 0x42800000    # 64.0f

    const v12, 0x42846666    # 66.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x6

    .line 197
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x428c999a    # 70.3f

    const/high16 v14, 0x42910000    # 72.5f

    const v8, 0x426b999a    # 58.9f

    const v9, 0x4274cccd    # 61.2f

    const/high16 v10, 0x427e0000    # 63.5f

    const v11, 0x42836666    # 65.7f

    const/high16 v12, 0x42880000    # 68.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x7

    .line 198
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x428fcccd    # 71.9f

    const v14, 0x42946666    # 74.2f

    const v8, 0x42713333    # 60.3f

    const v9, 0x427acccd    # 62.7f

    const/high16 v10, 0x42820000    # 65.0f

    const v11, 0x4286999a    # 67.3f

    const v12, 0x428b3333    # 69.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x8

    .line 199
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42930000    # 73.5f

    const v14, 0x4297999a    # 75.8f

    const v8, 0x4276cccd    # 61.7f

    const/high16 v9, 0x42800000    # 64.0f

    const v10, 0x4284cccd    # 66.4f

    const v11, 0x42896666    # 68.7f

    const v12, 0x428e3333    # 71.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x9

    .line 200
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42960000    # 75.0f

    const v14, 0x429acccd    # 77.4f

    const v8, 0x427b999a    # 62.9f

    const v9, 0x4282999a    # 65.3f

    const v10, 0x42876666    # 67.7f

    const v11, 0x428c3333    # 70.1f

    const v12, 0x42913333    # 72.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xa

    .line 201
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4298cccd    # 76.4f

    const v14, 0x429dcccd    # 78.9f

    const v8, 0x42803333    # 64.1f

    const/high16 v9, 0x42850000    # 66.5f

    const/high16 v10, 0x428a0000    # 69.0f

    const/high16 v11, 0x428f0000    # 71.5f

    const v12, 0x4293cccd    # 73.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xb

    .line 202
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x429b999a    # 77.8f

    const v14, 0x42a0999a    # 80.3f

    const v8, 0x42826666    # 65.2f

    const v9, 0x42876666    # 67.7f

    const v10, 0x428c999a    # 70.3f

    const v11, 0x4291999a    # 72.8f

    const v12, 0x4296999a    # 75.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xc

    .line 203
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x429e6666    # 79.2f

    const v14, 0x42a36666    # 81.7f

    const v8, 0x4284999a    # 66.3f

    const v9, 0x4289cccd    # 68.9f

    const v10, 0x428ecccd    # 71.4f

    const/high16 v11, 0x42940000    # 74.0f

    const v12, 0x42993333    # 76.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xd

    .line 204
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42a10000    # 80.5f

    const v14, 0x42a63333    # 83.1f

    const v8, 0x4286999a    # 67.3f

    const/high16 v9, 0x428c0000    # 70.0f

    const v10, 0x42913333    # 72.6f

    const v11, 0x42966666    # 75.2f

    const v12, 0x429b999a    # 77.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xe

    .line 205
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42a36666    # 81.7f

    const v14, 0x42a8cccd    # 84.4f

    const v8, 0x4288999a    # 68.3f

    const/high16 v9, 0x428e0000    # 71.0f

    const v10, 0x42936666    # 73.7f

    const v11, 0x4298cccd    # 76.4f

    const v12, 0x429e3333    # 79.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xf

    .line 206
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42a60000    # 83.0f

    const v14, 0x42ab6666    # 85.7f

    const v8, 0x428a999a    # 69.3f

    const/high16 v9, 0x42900000    # 72.0f

    const v10, 0x4295999a    # 74.8f

    const/high16 v11, 0x429b0000    # 77.5f

    const v12, 0x42a06666    # 80.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x10

    .line 207
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42a86666    # 84.2f

    const/high16 v14, 0x42ae0000    # 87.0f

    const v8, 0x428c6666    # 70.2f

    const/high16 v9, 0x42920000    # 73.0f

    const v10, 0x4297999a    # 75.8f

    const v11, 0x429d3333    # 78.6f

    const v12, 0x42a2cccd    # 81.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x11

    .line 208
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42aacccd    # 85.4f

    const v14, 0x42b06666    # 88.2f

    const v8, 0x428e3333    # 71.1f

    const/high16 v9, 0x42940000    # 74.0f

    const v10, 0x4299999a    # 76.8f

    const v11, 0x429f6666    # 79.7f

    const/high16 v12, 0x42a50000    # 82.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x12

    .line 209
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42ad0000    # 86.5f

    const v14, 0x42b2cccd    # 89.4f

    const/high16 v8, 0x42900000    # 72.0f

    const v9, 0x4295cccd    # 74.9f

    const v10, 0x429b999a    # 77.8f

    const v11, 0x42a16666    # 80.7f

    const v12, 0x42a73333    # 83.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x13

    .line 210
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42af3333    # 87.6f

    const v14, 0x42b53333    # 90.6f

    const v8, 0x4291999a    # 72.8f

    const v9, 0x4297999a    # 75.8f

    const v10, 0x429d999a    # 78.8f

    const v11, 0x42a36666    # 81.7f

    const v12, 0x42a96666    # 84.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x14

    .line 211
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42b16666    # 88.7f

    const v14, 0x42b76666    # 91.7f

    const v8, 0x42936666    # 73.7f

    const v9, 0x42996666    # 76.7f

    const v10, 0x429f6666    # 79.7f

    const v11, 0x42a56666    # 82.7f

    const v12, 0x42ab6666    # 85.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x15

    .line 212
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42b3999a    # 89.8f

    const v14, 0x42b9cccd    # 92.9f

    const/high16 v8, 0x42950000    # 74.5f

    const/high16 v9, 0x429b0000    # 77.5f

    const v10, 0x42a13333    # 80.6f

    const v11, 0x42a76666    # 83.7f

    const v12, 0x42ad6666    # 86.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x16

    .line 213
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42b5999a    # 90.8f

    const/high16 v14, 0x42bc0000    # 94.0f

    const v8, 0x42966666    # 75.2f

    const v9, 0x429ccccd    # 78.4f

    const/high16 v10, 0x42a30000    # 81.5f

    const v11, 0x42a93333    # 84.6f

    const v12, 0x42af6666    # 87.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x17

    .line 214
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42b7cccd    # 91.9f

    const/high16 v14, 0x42be0000    # 95.0f

    const/high16 v8, 0x42980000    # 76.0f

    const v9, 0x429e6666    # 79.2f

    const v10, 0x42a4999a    # 82.3f

    const/high16 v11, 0x42ab0000    # 85.5f

    const v12, 0x42b16666    # 88.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x18

    .line 215
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42b9cccd    # 92.9f

    const v14, 0x42c03333    # 96.1f

    const v8, 0x42996666    # 76.7f

    const/high16 v9, 0x42a00000    # 80.0f

    const v10, 0x42a66666    # 83.2f

    const v11, 0x42accccd    # 86.4f

    const v12, 0x42b33333    # 89.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x19

    .line 216
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42ba3333    # 93.1f

    const v14, 0x42c0cccd    # 96.4f

    const v8, 0x4299999a    # 76.8f

    const v10, 0x42a6999a    # 83.3f

    const v11, 0x42ad3333    # 86.6f

    const v12, 0x42b3cccd    # 89.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1a

    .line 217
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42bc3333    # 94.1f

    const v14, 0x42c2cccd    # 97.4f

    const/high16 v8, 0x429b0000    # 77.5f

    const v9, 0x42a1999a    # 80.8f

    const v10, 0x42a83333    # 84.1f

    const v11, 0x42aecccd    # 87.4f

    const v12, 0x42b5999a    # 90.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1b

    .line 218
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42be0000    # 95.0f

    const v14, 0x42c4cccd    # 98.4f

    const v8, 0x429c3333    # 78.1f

    const/high16 v9, 0x42a30000    # 81.5f

    const v10, 0x42a9cccd    # 84.9f

    const v11, 0x42b0999a    # 88.3f

    const v12, 0x42b76666    # 91.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1c

    .line 219
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42c00000    # 96.0f

    const v14, 0x42c6cccd    # 99.4f

    const v8, 0x429d999a    # 78.8f

    const v9, 0x42a46666    # 82.2f

    const v10, 0x42ab6666    # 85.7f

    const v11, 0x42b23333    # 89.1f

    const/high16 v12, 0x42b90000    # 92.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1d

    .line 220
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42c1cccd    # 96.9f

    const v14, 0x42c8999a    # 100.3f

    const/high16 v8, 0x429f0000    # 79.5f

    const v9, 0x42a5cccd    # 82.9f

    const v10, 0x42accccd    # 86.4f

    const v11, 0x42b3cccd    # 89.9f

    const v12, 0x42bacccd    # 93.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1e

    .line 221
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42c36666    # 97.7f

    const v14, 0x42ca999a    # 101.3f

    const v8, 0x42a03333    # 80.1f

    const v9, 0x42a73333    # 83.6f

    const v10, 0x42ae3333    # 87.1f

    const v11, 0x42b56666    # 90.7f

    const v12, 0x42bc6666    # 94.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1f

    .line 222
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42c53333    # 98.6f

    const v14, 0x42cc6666    # 102.2f

    const v8, 0x42a16666    # 80.7f

    const v9, 0x42a8999a    # 84.3f

    const v10, 0x42afcccd    # 87.9f

    const v11, 0x42b6cccd    # 91.4f

    const/high16 v12, 0x42be0000    # 95.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x20

    .line 223
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42c6cccd    # 99.4f

    const v14, 0x42ce3333    # 103.1f

    const v8, 0x42a2999a    # 81.3f

    const v9, 0x42a9cccd    # 84.9f

    const v10, 0x42b13333    # 88.6f

    const v11, 0x42b86666    # 92.2f

    const v12, 0x42bf999a    # 95.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x21

    .line 224
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42c8999a    # 100.3f

    const v14, 0x42cfcccd    # 103.9f

    const v8, 0x42a3cccd    # 81.9f

    const v9, 0x42ab3333    # 85.6f

    const v10, 0x42b2999a    # 89.3f

    const v11, 0x42b9cccd    # 92.9f

    const v12, 0x42c13333    # 96.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x22

    .line 225
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42ca3333    # 101.1f

    const v14, 0x42d1999a    # 104.8f

    const/high16 v8, 0x42a50000    # 82.5f

    const v9, 0x42ac6666    # 86.2f

    const v10, 0x42b3cccd    # 89.9f

    const v11, 0x42bb3333    # 93.6f

    const v12, 0x42c2cccd    # 97.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x23

    .line 226
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42cbcccd    # 101.9f

    const v14, 0x42d33333    # 105.6f

    const v8, 0x42a63333    # 83.1f

    const v9, 0x42ad999a    # 86.8f

    const v10, 0x42b53333    # 90.6f

    const v11, 0x42bccccd    # 94.4f

    const v12, 0x42c43333    # 98.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x24

    .line 227
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42cd6666    # 102.7f

    const/high16 v14, 0x42d50000    # 106.5f

    const v8, 0x42a73333    # 83.6f

    const v9, 0x42aecccd    # 87.4f

    const v10, 0x42b66666    # 91.2f

    const v11, 0x42be3333    # 95.1f

    const v12, 0x42c5cccd    # 98.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x25

    .line 228
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42cecccd    # 103.4f

    const v14, 0x42d6999a    # 107.3f

    const v8, 0x42a86666    # 84.2f

    const/high16 v9, 0x42b00000    # 88.0f

    const v10, 0x42b7cccd    # 91.9f

    const v11, 0x42bf6666    # 95.7f

    const v12, 0x42c73333    # 99.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x26

    .line 229
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42d06666    # 104.2f

    const v14, 0x42d83333    # 108.1f

    const v8, 0x42a96666    # 84.7f

    const v9, 0x42b13333    # 88.6f

    const/high16 v10, 0x42b90000    # 92.5f

    const v11, 0x42c0cccd    # 96.4f

    const v12, 0x42c8999a    # 100.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x27

    .line 230
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42d20000    # 105.0f

    const v14, 0x42d9cccd    # 108.9f

    const v8, 0x42aa999a    # 85.3f

    const v9, 0x42b26666    # 89.2f

    const v10, 0x42ba3333    # 93.1f

    const v11, 0x42c23333    # 97.1f

    const/high16 v12, 0x42ca0000    # 101.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x28

    .line 231
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42d36666    # 105.7f

    const v14, 0x42db6666    # 109.7f

    const v8, 0x42ab999a    # 85.8f

    const v9, 0x42b3999a    # 89.8f

    const v10, 0x42bb999a    # 93.8f

    const v11, 0x42c36666    # 97.7f

    const v12, 0x42cb6666    # 101.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x29

    .line 232
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42d4cccd    # 106.4f

    const/high16 v14, 0x42dd0000    # 110.5f

    const v8, 0x42ac999a    # 86.3f

    const v9, 0x42b4cccd    # 90.4f

    const v10, 0x42bccccd    # 94.4f

    const v11, 0x42c4cccd    # 98.4f

    const v12, 0x42cccccd    # 102.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2a

    .line 233
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42d66666    # 107.2f

    const v14, 0x42de6666    # 111.2f

    const v8, 0x42ad999a    # 86.8f

    const v9, 0x42b5cccd    # 90.9f

    const/high16 v10, 0x42be0000    # 95.0f

    const/high16 v11, 0x42c60000    # 99.0f

    const v12, 0x42ce3333    # 103.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2b

    .line 234
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42d7cccd    # 107.9f

    const/high16 v14, 0x42e00000    # 112.0f

    const v8, 0x42aecccd    # 87.4f

    const/high16 v9, 0x42b70000    # 91.5f

    const v10, 0x42bf3333    # 95.6f

    const v11, 0x42c76666    # 99.7f

    const v12, 0x42cf999a    # 103.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2c

    .line 235
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42d93333    # 108.6f

    const v14, 0x42e16666    # 112.7f

    const v8, 0x42afcccd    # 87.9f

    const/high16 v9, 0x42b80000    # 92.0f

    const v10, 0x42c06666    # 96.2f

    const v11, 0x42c8999a    # 100.3f

    const/high16 v12, 0x42d10000    # 104.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42da999a    # 109.3f

    const/high16 v14, 0x42e30000    # 113.5f

    const v8, 0x42b0cccd    # 88.4f

    const/high16 v9, 0x42b90000    # 92.5f

    const v10, 0x42c16666    # 96.7f

    const v11, 0x42c9cccd    # 100.9f

    const v12, 0x42d23333    # 105.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {v3, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42dc0000    # 110.0f

    const v14, 0x42e46666    # 114.2f

    const v8, 0x42b1cccd    # 88.9f

    const v9, 0x42ba3333    # 93.1f

    const v10, 0x42c2999a    # 97.3f

    const/high16 v11, 0x42cb0000    # 101.5f

    const v12, 0x42d3999a    # 105.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {v4, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42dd6666    # 110.7f

    const v14, 0x42e5cccd    # 114.9f

    const v8, 0x42b2999a    # 89.3f

    const v9, 0x42bb3333    # 93.6f

    const v10, 0x42c3cccd    # 97.9f

    const v11, 0x42cc3333    # 102.1f

    const v12, 0x42d4cccd    # 106.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x30

    .line 239
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v7

    new-instance v5, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v14, 0x42de999a    # 111.3f

    const v15, 0x42e76666    # 115.7f

    const v9, 0x42b3999a    # 89.8f

    const v10, 0x42bc3333    # 94.1f

    const v11, 0x42c4cccd    # 98.4f

    const v12, 0x42cd6666    # 102.7f

    const/high16 v13, 0x42d60000    # 107.0f

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x31

    .line 240
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v7

    new-instance v5, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v14, 0x42e00000    # 112.0f

    const v15, 0x42e8cccd    # 116.4f

    const v9, 0x42b4999a    # 90.3f

    const v10, 0x42bd3333    # 94.6f

    const/high16 v11, 0x42c60000    # 99.0f

    const v12, 0x42ce999a    # 103.3f

    const v13, 0x42d76666    # 107.7f

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x32

    .line 241
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42e16666    # 112.7f

    const v14, 0x42ea3333    # 117.1f

    const v8, 0x42b56666    # 90.7f

    const v9, 0x42be3333    # 95.1f

    const/high16 v10, 0x42c70000    # 99.5f

    const v11, 0x42cfcccd    # 103.9f

    const v12, 0x42d8999a    # 108.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x33

    .line 242
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42e2999a    # 113.3f

    const v14, 0x42eb6666    # 117.7f

    const v8, 0x42b66666    # 91.2f

    const v9, 0x42bf3333    # 95.6f

    const v10, 0x42c83333    # 100.1f

    const/high16 v11, 0x42d10000    # 104.5f

    const v12, 0x42d9cccd    # 108.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x34

    .line 243
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42e40000    # 114.0f

    const v14, 0x42eccccd    # 118.4f

    const v8, 0x42b76666    # 91.7f

    const v9, 0x42c03333    # 96.1f

    const v10, 0x42c93333    # 100.6f

    const/high16 v11, 0x42d20000    # 105.0f

    const/high16 v12, 0x42db0000    # 109.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x35

    .line 244
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42e53333    # 114.6f

    const v14, 0x42ee3333    # 119.1f

    const v8, 0x42b83333    # 92.1f

    const v9, 0x42c13333    # 96.6f

    const v10, 0x42ca3333    # 101.1f

    const v11, 0x42d33333    # 105.6f

    const v12, 0x42dc3333    # 110.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x36

    .line 245
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42e66666    # 115.2f

    const v14, 0x42ef999a    # 119.8f

    const v8, 0x42b93333    # 92.6f

    const v9, 0x42c23333    # 97.1f

    const v10, 0x42cb3333    # 101.6f

    const v11, 0x42d46666    # 106.2f

    const v12, 0x42dd6666    # 110.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x37

    .line 246
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42e7cccd    # 115.9f

    const v14, 0x42f0cccd    # 120.4f

    const/high16 v8, 0x42ba0000    # 93.0f

    const v9, 0x42c33333    # 97.6f

    const v10, 0x42cc6666    # 102.2f

    const v11, 0x42d56666    # 106.7f

    const v12, 0x42de999a    # 111.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x38

    .line 247
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42e90000    # 116.5f

    const v14, 0x42f23333    # 121.1f

    const v8, 0x42bacccd    # 93.4f

    const v9, 0x42c43333    # 98.1f

    const v10, 0x42cd6666    # 102.7f

    const v11, 0x42d6999a    # 107.3f

    const v12, 0x42dfcccd    # 111.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x39

    .line 248
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42ea3333    # 117.1f

    const v14, 0x42f3999a    # 121.8f

    const v8, 0x42bbcccd    # 93.9f

    const/high16 v9, 0x42c50000    # 98.5f

    const v10, 0x42ce6666    # 103.2f

    const v11, 0x42d7999a    # 107.8f

    const/high16 v12, 0x42e10000    # 112.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3a

    .line 249
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42eb6666    # 117.7f

    const v14, 0x42f4cccd    # 122.4f

    const v8, 0x42bc999a    # 94.3f

    const/high16 v9, 0x42c60000    # 99.0f

    const v10, 0x42cf6666    # 103.7f

    const v11, 0x42d8cccd    # 108.4f

    const/high16 v12, 0x42e20000    # 113.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3b

    .line 250
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42ec999a    # 118.3f

    const v14, 0x42f63333    # 123.1f

    const v8, 0x42bd6666    # 94.7f

    const/high16 v9, 0x42c70000    # 99.5f

    const v10, 0x42d06666    # 104.2f

    const v11, 0x42d9cccd    # 108.9f

    const v12, 0x42e33333    # 113.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3c

    .line 251
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42edcccd    # 118.9f

    const v14, 0x42f76666    # 123.7f

    const v8, 0x42be6666    # 95.2f

    const v9, 0x42c7cccd    # 99.9f

    const v10, 0x42d16666    # 104.7f

    const v11, 0x42dacccd    # 109.4f

    const v12, 0x42e46666    # 114.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3d

    .line 252
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42ee3333    # 119.1f

    const v14, 0x42f7cccd    # 123.9f

    const v8, 0x42be999a    # 95.3f

    const v9, 0x42c83333    # 100.1f

    const v10, 0x42d1999a    # 104.8f

    const v11, 0x42db3333    # 109.6f

    const v12, 0x42e4cccd    # 114.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3e

    .line 253
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42ef6666    # 119.7f

    const/high16 v14, 0x42f90000    # 124.5f

    const v8, 0x42bf6666    # 95.7f

    const/high16 v9, 0x42c90000    # 100.5f

    const v10, 0x42d2999a    # 105.3f

    const v11, 0x42dc3333    # 110.1f

    const v12, 0x42e5cccd    # 114.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3f

    .line 254
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f0999a    # 120.3f

    const v14, 0x42fa6666    # 125.2f

    const v8, 0x42c03333    # 96.1f

    const/high16 v9, 0x42ca0000    # 101.0f

    const v10, 0x42d3999a    # 105.8f

    const v11, 0x42dd3333    # 110.6f

    const/high16 v12, 0x42e70000    # 115.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x40

    .line 255
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f1cccd    # 120.9f

    const v14, 0x42fb999a    # 125.8f

    const/high16 v8, 0x42c10000    # 96.5f

    const v9, 0x42cacccd    # 101.4f

    const v10, 0x42d4999a    # 106.3f

    const v11, 0x42de6666    # 111.2f

    const/high16 v12, 0x42e80000    # 116.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x41

    .line 256
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42f30000    # 121.5f

    const v14, 0x42fccccd    # 126.4f

    const/high16 v8, 0x42c20000    # 97.0f

    const v9, 0x42cbcccd    # 101.9f

    const v10, 0x42d5999a    # 106.8f

    const v11, 0x42df6666    # 111.7f

    const v12, 0x42e93333    # 116.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x42

    .line 257
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42f40000    # 122.0f

    const/high16 v14, 0x42fe0000    # 127.0f

    const v8, 0x42c2cccd    # 97.4f

    const v9, 0x42cc999a    # 102.3f

    const v10, 0x42d66666    # 107.2f

    const v11, 0x42e06666    # 112.2f

    const v12, 0x42ea3333    # 117.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x43

    .line 258
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f53333    # 122.6f

    const v14, 0x42ff3333    # 127.6f

    const v8, 0x42c3999a    # 97.8f

    const v9, 0x42cd6666    # 102.7f

    const v10, 0x42d76666    # 107.7f

    const v11, 0x42e16666    # 112.7f

    const v12, 0x42eb3333    # 117.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x44

    .line 259
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f66666    # 123.2f

    const v14, 0x43003333    # 128.2f

    const v8, 0x42c46666    # 98.2f

    const v9, 0x42ce6666    # 103.2f

    const v10, 0x42d86666    # 108.2f

    const v11, 0x42e26666    # 113.2f

    const v12, 0x42ec6666    # 118.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x45

    .line 260
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f76666    # 123.7f

    const v14, 0x4300cccd    # 128.8f

    const v8, 0x42c53333    # 98.6f

    const v9, 0x42cf3333    # 103.6f

    const v10, 0x42d93333    # 108.6f

    const v11, 0x42e36666    # 113.7f

    const v12, 0x42ed6666    # 118.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {v2, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f8999a    # 124.3f

    const v14, 0x43014ccd    # 129.3f

    const/high16 v8, 0x42c60000    # 99.0f

    const/high16 v9, 0x42d00000    # 104.0f

    const v10, 0x42da3333    # 109.1f

    const v11, 0x42e46666    # 114.2f

    const v12, 0x42ee6666    # 119.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x47

    .line 262
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f9999a    # 124.8f

    const v14, 0x4301e666    # 129.9f

    const v8, 0x42c6cccd    # 99.4f

    const/high16 v9, 0x42d10000    # 104.5f

    const v10, 0x42db3333    # 109.6f

    const v11, 0x42e53333    # 114.6f

    const v12, 0x42ef6666    # 119.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x48

    .line 263
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42facccd    # 125.4f

    const v14, 0x43028000    # 130.5f

    const v8, 0x42c7999a    # 99.8f

    const v9, 0x42d1cccd    # 104.9f

    const/high16 v10, 0x42dc0000    # 110.0f

    const v11, 0x42e63333    # 115.1f

    const v12, 0x42f06666    # 120.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x49

    .line 264
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42fbcccd    # 125.9f

    const v14, 0x4303199a    # 131.1f

    const v8, 0x42c86666    # 100.2f

    const v9, 0x42d2999a    # 105.3f

    const/high16 v10, 0x42dd0000    # 110.5f

    const v11, 0x42e73333    # 115.6f

    const v12, 0x42f1999a    # 120.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4a

    .line 265
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42fccccd    # 126.4f

    const v14, 0x4303999a    # 131.6f

    const/high16 v8, 0x42c90000    # 100.5f

    const v9, 0x42d36666    # 105.7f

    const v10, 0x42ddcccd    # 110.9f

    const v11, 0x42e83333    # 116.1f

    const v12, 0x42f2999a    # 121.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4b

    .line 266
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42fe0000    # 127.0f

    const v14, 0x43043333    # 132.2f

    const v8, 0x42c9cccd    # 100.9f

    const v9, 0x42d43333    # 106.1f

    const v10, 0x42de999a    # 111.3f

    const v11, 0x42e93333    # 116.6f

    const v12, 0x42f3999a    # 121.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4c

    .line 267
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42ff0000    # 127.5f

    const v14, 0x4304b333    # 132.7f

    const v8, 0x42ca999a    # 101.3f

    const v9, 0x42d53333    # 106.6f

    const v10, 0x42df999a    # 111.8f

    const/high16 v11, 0x42ea0000    # 117.0f

    const v12, 0x42f4999a    # 122.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x43000000    # 128.0f

    const v14, 0x43054ccd    # 133.3f

    const v8, 0x42cb6666    # 101.7f

    const/high16 v9, 0x42d60000    # 107.0f

    const v10, 0x42e06666    # 112.2f

    const/high16 v11, 0x42eb0000    # 117.5f

    const v12, 0x42f5999a    # 122.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4e

    .line 269
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4300999a    # 128.6f

    const v14, 0x4305e666    # 133.9f

    const v8, 0x42cc3333    # 102.1f

    const v9, 0x42d6cccd    # 107.4f

    const v10, 0x42e16666    # 112.7f

    const/high16 v11, 0x42ec0000    # 118.0f

    const v12, 0x42f6999a    # 123.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4f

    .line 270
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4301199a    # 129.1f

    const v14, 0x43066666    # 134.4f

    const/high16 v8, 0x42cd0000    # 102.5f

    const v9, 0x42d7999a    # 107.8f

    const v10, 0x42e23333    # 113.1f

    const v11, 0x42eccccd    # 118.4f

    const v12, 0x42f7999a    # 123.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x50

    .line 271
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4301999a    # 129.6f

    const/high16 v14, 0x43070000    # 135.0f

    const v8, 0x42cdcccd    # 102.9f

    const v9, 0x42d86666    # 108.2f

    const v10, 0x42e33333    # 113.6f

    const v11, 0x42edcccd    # 118.9f

    const v12, 0x42f8999a    # 124.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x51

    .line 272
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x43023333    # 130.2f

    const v14, 0x43078000    # 135.5f

    const v8, 0x42ce6666    # 103.2f

    const v9, 0x42d93333    # 108.6f

    const/high16 v10, 0x42e40000    # 114.0f

    const v11, 0x42eecccd    # 119.4f

    const v12, 0x42f9999a    # 124.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x52

    .line 273
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4302b333    # 130.7f

    const v14, 0x4308199a    # 136.1f

    const v8, 0x42cf3333    # 103.6f

    const/high16 v9, 0x42da0000    # 109.0f

    const/high16 v10, 0x42e50000    # 114.5f

    const v11, 0x42efcccd    # 119.9f

    const v12, 0x42fa999a    # 125.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x53

    .line 274
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x43033333    # 131.2f

    const v14, 0x4308b333    # 136.7f

    const/high16 v8, 0x42d00000    # 104.0f

    const/high16 v9, 0x42db0000    # 109.5f

    const v10, 0x42e5cccd    # 114.9f

    const v11, 0x42f0999a    # 120.3f

    const v12, 0x42fb999a    # 125.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 278
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4256cccd    # 53.7f

    const v14, 0x425e6666    # 55.6f

    const v8, 0x4230cccd    # 44.2f

    const v9, 0x42386666    # 46.1f

    const/high16 v10, 0x42400000    # 48.0f

    const v11, 0x4247999a    # 49.9f

    const v12, 0x424f3333    # 51.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    .line 279
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x426a6666    # 58.6f

    const v14, 0x42726666    # 60.6f

    const v8, 0x4243999a    # 48.9f

    const v9, 0x424b3333    # 50.8f

    const v10, 0x42533333    # 52.8f

    const v11, 0x425acccd    # 54.7f

    const v12, 0x4262cccd    # 56.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    .line 280
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4279999a    # 62.4f

    const v14, 0x4280cccd    # 64.4f

    const v8, 0x4251999a    # 52.4f

    const v9, 0x4259999a    # 54.4f

    const v10, 0x4261999a    # 56.4f

    const v11, 0x4269999a    # 58.4f

    const v12, 0x4271999a    # 60.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    .line 281
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42830000    # 65.5f

    const v14, 0x42873333    # 67.6f

    const v8, 0x425d3333    # 55.3f

    const v9, 0x42653333    # 57.3f

    const v10, 0x426d999a    # 59.4f

    const v11, 0x4275999a    # 61.4f

    const/high16 v12, 0x427e0000    # 63.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x4

    .line 282
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42880000    # 68.0f

    const v14, 0x428c3333    # 70.1f

    const v8, 0x42666666    # 57.6f

    const v9, 0x426ecccd    # 59.7f

    const v10, 0x42773333    # 61.8f

    const v11, 0x427f999a    # 63.9f

    const/high16 v12, 0x42840000    # 66.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x5

    .line 283
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x428c3333    # 70.1f

    const v14, 0x42906666    # 72.2f

    const v8, 0x426e6666    # 59.6f

    const v9, 0x4276cccd    # 61.7f

    const v10, 0x427f3333    # 63.8f

    const v11, 0x4283cccd    # 65.9f

    const/high16 v12, 0x42880000    # 68.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x6

    .line 284
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x428fcccd    # 71.9f

    const/high16 v14, 0x42940000    # 74.0f

    const v8, 0x4274cccd    # 61.2f

    const v9, 0x427d3333    # 63.3f

    const/high16 v10, 0x42830000    # 65.5f

    const v11, 0x42873333    # 67.6f

    const v12, 0x428b999a    # 69.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x7

    .line 285
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42930000    # 73.5f

    const v14, 0x42976666    # 75.7f

    const v8, 0x427acccd    # 62.7f

    const v9, 0x4281999a    # 64.8f

    const/high16 v10, 0x42860000    # 67.0f

    const v11, 0x428a6666    # 69.2f

    const v12, 0x428e999a    # 71.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x8

    .line 286
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42960000    # 75.0f

    const v14, 0x429a6666    # 77.2f

    const/high16 v8, 0x42800000    # 64.0f

    const v9, 0x42846666    # 66.2f

    const v10, 0x4288cccd    # 68.4f

    const v11, 0x428d3333    # 70.6f

    const v12, 0x4291999a    # 72.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x9

    .line 287
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42990000    # 76.5f

    const v14, 0x429d6666    # 78.7f

    const v8, 0x42826666    # 65.2f

    const/high16 v9, 0x42870000    # 67.5f

    const v10, 0x428b6666    # 69.7f

    const/high16 v11, 0x42900000    # 72.0f

    const v12, 0x42946666    # 74.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xa

    .line 288
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x429bcccd    # 77.9f

    const v14, 0x42a03333    # 80.1f

    const v8, 0x4284cccd    # 66.4f

    const v9, 0x42896666    # 68.7f

    const/high16 v10, 0x428e0000    # 71.0f

    const v11, 0x4292999a    # 73.3f

    const v12, 0x42973333    # 75.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xb

    .line 289
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x429e6666    # 79.2f

    const/high16 v14, 0x42a30000    # 81.5f

    const v8, 0x42873333    # 67.6f

    const v9, 0x428bcccd    # 69.9f

    const v10, 0x42906666    # 72.2f

    const/high16 v11, 0x42950000    # 74.5f

    const v12, 0x4299cccd    # 76.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xc

    .line 290
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42a10000    # 80.5f

    const v14, 0x42a5cccd    # 82.9f

    const v8, 0x42893333    # 68.6f

    const/high16 v9, 0x428e0000    # 71.0f

    const v10, 0x4292cccd    # 73.4f

    const v11, 0x42976666    # 75.7f

    const v12, 0x429c3333    # 78.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xd

    .line 291
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42a3999a    # 81.8f

    const v14, 0x42a86666    # 84.2f

    const v8, 0x428b3333    # 69.6f

    const v9, 0x42903333    # 72.1f

    const/high16 v10, 0x42950000    # 74.5f

    const v11, 0x4299cccd    # 76.9f

    const v12, 0x429e999a    # 79.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xe

    .line 292
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42a60000    # 83.0f

    const/high16 v14, 0x42ab0000    # 85.5f

    const v8, 0x428d3333    # 70.6f

    const v9, 0x42923333    # 73.1f

    const v10, 0x42973333    # 75.6f

    const/high16 v11, 0x429c0000    # 78.0f

    const/high16 v12, 0x42a10000    # 80.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xf

    .line 293
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42a86666    # 84.2f

    const v14, 0x42ad6666    # 86.7f

    const v8, 0x428f3333    # 71.6f

    const v9, 0x42943333    # 74.1f

    const v10, 0x42993333    # 76.6f

    const v11, 0x429e3333    # 79.1f

    const v12, 0x42a36666    # 81.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x10

    .line 294
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42aacccd    # 85.4f

    const/high16 v14, 0x42b00000    # 88.0f

    const/high16 v8, 0x42910000    # 72.5f

    const/high16 v9, 0x42960000    # 75.0f

    const v10, 0x429b3333    # 77.6f

    const v11, 0x42a06666    # 80.2f

    const v12, 0x42a5999a    # 82.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x11

    .line 295
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42ad0000    # 86.5f

    const v14, 0x42b26666    # 89.2f

    const v8, 0x4292999a    # 73.3f

    const/high16 v9, 0x42980000    # 76.0f

    const v10, 0x429d3333    # 78.6f

    const v11, 0x42a26666    # 81.2f

    const v12, 0x42a7cccd    # 83.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x12

    .line 296
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42af6666    # 87.7f

    const v14, 0x42b4cccd    # 90.4f

    const v8, 0x42946666    # 74.2f

    const v9, 0x4299cccd    # 76.9f

    const v10, 0x429f3333    # 79.6f

    const v11, 0x42a4999a    # 82.3f

    const/high16 v12, 0x42aa0000    # 85.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x13

    .line 297
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42b1999a    # 88.8f

    const/high16 v14, 0x42b70000    # 91.5f

    const/high16 v8, 0x42960000    # 75.0f

    const v9, 0x429b6666    # 77.7f

    const/high16 v10, 0x42a10000    # 80.5f

    const v11, 0x42a66666    # 83.2f

    const/high16 v12, 0x42ac0000    # 86.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x14

    .line 298
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42b3999a    # 89.8f

    const v14, 0x42b93333    # 92.6f

    const v8, 0x4297999a    # 75.8f

    const v9, 0x429d3333    # 78.6f

    const v10, 0x42a2cccd    # 81.4f

    const v11, 0x42a86666    # 84.2f

    const/high16 v12, 0x42ae0000    # 87.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x15

    .line 299
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42b5cccd    # 90.9f

    const v14, 0x42bb999a    # 93.8f

    const/high16 v8, 0x42990000    # 76.5f

    const v9, 0x429ecccd    # 79.4f

    const v10, 0x42a4999a    # 82.3f

    const v11, 0x42aa3333    # 85.1f

    const/high16 v12, 0x42b00000    # 88.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x16

    .line 300
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42b7cccd    # 91.9f

    const v14, 0x42bdcccd    # 94.9f

    const v8, 0x429a6666    # 77.2f

    const v9, 0x42a06666    # 80.2f

    const v10, 0x42a63333    # 83.1f

    const/high16 v11, 0x42ac0000    # 86.0f

    const/high16 v12, 0x42b20000    # 89.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x17

    .line 301
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42b9cccd    # 92.9f

    const v14, 0x42bfcccd    # 95.9f

    const/high16 v8, 0x429c0000    # 78.0f

    const/high16 v9, 0x42a20000    # 81.0f

    const v10, 0x42a7cccd    # 83.9f

    const v11, 0x42adcccd    # 86.9f

    const v12, 0x42b3cccd    # 89.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x18

    .line 302
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42bbcccd    # 93.9f

    const/high16 v14, 0x42c20000    # 97.0f

    const v8, 0x429d6666    # 78.7f

    const v9, 0x42a36666    # 81.7f

    const v10, 0x42a9999a    # 84.8f

    const v11, 0x42af999a    # 87.8f

    const v12, 0x42b5cccd    # 90.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x19

    .line 303
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42bc6666    # 94.2f

    const v14, 0x42c2999a    # 97.3f

    const v8, 0x429d3333    # 78.6f

    const v10, 0x42a9cccd    # 84.9f

    const/high16 v11, 0x42b00000    # 88.0f

    const v12, 0x42b63333    # 91.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1a

    .line 304
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42be6666    # 95.2f

    const v14, 0x42c4999a    # 98.3f

    const v8, 0x429e999a    # 79.3f

    const/high16 v9, 0x42a50000    # 82.5f

    const v10, 0x42ab3333    # 85.6f

    const v11, 0x42b1999a    # 88.8f

    const/high16 v12, 0x42b80000    # 92.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1b

    .line 305
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42c03333    # 96.1f

    const v14, 0x42c6999a    # 99.3f

    const v8, 0x429fcccd    # 79.9f

    const v9, 0x42a63333    # 83.1f

    const v10, 0x42accccd    # 86.4f

    const v11, 0x42b33333    # 89.6f

    const v12, 0x42b9cccd    # 92.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1c

    .line 306
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42c20000    # 97.0f

    const v14, 0x42c8999a    # 100.3f

    const/high16 v8, 0x42a10000    # 80.5f

    const v9, 0x42a7999a    # 83.8f

    const v10, 0x42ae3333    # 87.1f

    const v11, 0x42b4cccd    # 90.4f

    const v12, 0x42bb6666    # 93.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1d

    .line 307
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42c3cccd    # 97.9f

    const v14, 0x42ca6666    # 101.2f

    const v8, 0x42a23333    # 81.1f

    const/high16 v9, 0x42a90000    # 84.5f

    const v10, 0x42af999a    # 87.8f

    const v11, 0x42b66666    # 91.2f

    const/high16 v12, 0x42bd0000    # 94.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1e

    .line 308
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42c56666    # 98.7f

    const v14, 0x42cc3333    # 102.1f

    const v8, 0x42a36666    # 81.7f

    const v9, 0x42aa3333    # 85.1f

    const/high16 v10, 0x42b10000    # 88.5f

    const v11, 0x42b7cccd    # 91.9f

    const v12, 0x42be999a    # 95.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x1f

    .line 309
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42c73333    # 99.6f

    const/high16 v14, 0x42ce0000    # 103.0f

    const v8, 0x42a4999a    # 82.3f

    const v9, 0x42ab6666    # 85.7f

    const v10, 0x42b26666    # 89.2f

    const v11, 0x42b96666    # 92.7f

    const v12, 0x42c03333    # 96.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x20

    .line 310
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42c8cccd    # 100.4f

    const v14, 0x42cfcccd    # 103.9f

    const v8, 0x42a5999a    # 82.8f

    const v9, 0x42accccd    # 86.4f

    const v10, 0x42b3cccd    # 89.9f

    const v11, 0x42bacccd    # 93.4f

    const v12, 0x42c1cccd    # 96.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x21

    .line 311
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42ca6666    # 101.2f

    const v14, 0x42d1999a    # 104.8f

    const v8, 0x42a6cccd    # 83.4f

    const v9, 0x42adcccd    # 86.9f

    const/high16 v10, 0x42b50000    # 90.5f

    const v11, 0x42bc3333    # 94.1f

    const v12, 0x42c33333    # 97.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x22

    .line 312
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42cc0000    # 102.0f

    const v14, 0x42d33333    # 105.6f

    const v8, 0x42a7cccd    # 83.9f

    const/high16 v9, 0x42af0000    # 87.5f

    const v10, 0x42b63333    # 91.1f

    const v11, 0x42bd999a    # 94.8f

    const v12, 0x42c4cccd    # 98.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x23

    .line 313
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42cd6666    # 102.7f

    const v14, 0x42d4cccd    # 106.4f

    const v8, 0x42a8cccd    # 84.4f

    const v9, 0x42b03333    # 88.1f

    const v10, 0x42b7999a    # 91.8f

    const v11, 0x42becccd    # 95.4f

    const v12, 0x42c63333    # 99.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x24

    .line 314
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42cf0000    # 103.5f

    const v14, 0x42d66666    # 107.2f

    const/high16 v8, 0x42aa0000    # 85.0f

    const v9, 0x42b16666    # 88.7f

    const v10, 0x42b8cccd    # 92.4f

    const v11, 0x42c03333    # 96.1f

    const v12, 0x42c7999a    # 99.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x25

    .line 315
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42d06666    # 104.2f

    const/high16 v14, 0x42d80000    # 108.0f

    const/high16 v8, 0x42ab0000    # 85.5f

    const v9, 0x42b26666    # 89.2f

    const/high16 v10, 0x42ba0000    # 93.0f

    const v11, 0x42c16666    # 96.7f

    const/high16 v12, 0x42c90000    # 100.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x26

    .line 316
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42d20000    # 105.0f

    const v14, 0x42d9999a    # 108.8f

    const/high16 v8, 0x42ac0000    # 86.0f

    const v9, 0x42b3999a    # 89.8f

    const v10, 0x42bb3333    # 93.6f

    const v11, 0x42c2cccd    # 97.4f

    const v12, 0x42ca6666    # 101.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x27

    .line 317
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42d36666    # 105.7f

    const/high16 v14, 0x42db0000    # 109.5f

    const/high16 v8, 0x42ad0000    # 86.5f

    const v9, 0x42b4999a    # 90.3f

    const v10, 0x42bc6666    # 94.2f

    const/high16 v11, 0x42c40000    # 98.0f

    const v12, 0x42cb999a    # 101.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x28

    .line 318
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42d4cccd    # 106.4f

    const v14, 0x42dc999a    # 110.3f

    const/high16 v8, 0x42ae0000    # 87.0f

    const v9, 0x42b5cccd    # 90.9f

    const v10, 0x42bd6666    # 94.7f

    const v11, 0x42c53333    # 98.6f

    const/high16 v12, 0x42cd0000    # 102.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x29

    .line 319
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42d63333    # 107.1f

    const/high16 v14, 0x42de0000    # 111.0f

    const/high16 v8, 0x42af0000    # 87.5f

    const v9, 0x42b6cccd    # 91.4f

    const v10, 0x42be999a    # 95.3f

    const v11, 0x42c66666    # 99.2f

    const v12, 0x42ce6666    # 103.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2a

    .line 320
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42d7999a    # 107.8f

    const v14, 0x42df6666    # 111.7f

    const/high16 v8, 0x42b00000    # 88.0f

    const v9, 0x42b7cccd    # 91.9f

    const v10, 0x42bfcccd    # 95.9f

    const v11, 0x42c7cccd    # 99.9f

    const v12, 0x42cf999a    # 103.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2b

    .line 321
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42d90000    # 108.5f

    const/high16 v14, 0x42e10000    # 112.5f

    const v8, 0x42b0cccd    # 88.4f

    const v9, 0x42b8cccd    # 92.4f

    const v10, 0x42c0cccd    # 96.4f

    const v11, 0x42c8cccd    # 100.4f

    const/high16 v12, 0x42d10000    # 104.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2c

    .line 322
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42da3333    # 109.1f

    const v14, 0x42e26666    # 113.2f

    const v8, 0x42b1cccd    # 88.9f

    const/high16 v9, 0x42ba0000    # 93.0f

    const/high16 v10, 0x42c20000    # 97.0f

    const/high16 v11, 0x42ca0000    # 101.0f

    const v12, 0x42d23333    # 105.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42db999a    # 109.8f

    const v14, 0x42e3cccd    # 113.9f

    const v8, 0x42b2cccd    # 89.4f

    const/high16 v9, 0x42bb0000    # 93.5f

    const/high16 v10, 0x42c30000    # 97.5f

    const v11, 0x42cb3333    # 101.6f

    const v12, 0x42d36666    # 105.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {v3, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42dccccd    # 110.4f

    const v14, 0x42e53333    # 114.6f

    const v8, 0x42b3999a    # 89.8f

    const/high16 v9, 0x42bc0000    # 94.0f

    const v10, 0x42c43333    # 98.1f

    const v11, 0x42cc6666    # 102.2f

    const v12, 0x42d4999a    # 106.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42de3333    # 111.1f

    const v14, 0x42e66666    # 115.2f

    const v8, 0x42b4999a    # 90.3f

    const v9, 0x42bccccd    # 94.4f

    const v10, 0x42c53333    # 98.6f

    const v11, 0x42cd999a    # 102.8f

    const v12, 0x42d5cccd    # 106.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x30

    .line 326
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v7

    new-instance v5, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v14, 0x42df6666    # 111.7f

    const v15, 0x42e7cccd    # 115.9f

    const v9, 0x42b56666    # 90.7f

    const v10, 0x42bdcccd    # 94.9f

    const v11, 0x42c63333    # 99.1f

    const v12, 0x42ce999a    # 103.3f

    const/high16 v13, 0x42d70000    # 107.5f

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x31

    .line 327
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v7

    new-instance v5, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v14, 0x42e0cccd    # 112.4f

    const v15, 0x42e93333    # 116.6f

    const v9, 0x42b66666    # 91.2f

    const v10, 0x42becccd    # 95.4f

    const v11, 0x42c76666    # 99.7f

    const v12, 0x42cfcccd    # 103.9f

    const v13, 0x42d83333    # 108.1f

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x32

    .line 328
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42e20000    # 113.0f

    const v14, 0x42ea999a    # 117.3f

    const v8, 0x42b73333    # 91.6f

    const v9, 0x42bfcccd    # 95.9f

    const v10, 0x42c86666    # 100.2f

    const v11, 0x42d0cccd    # 104.4f

    const v12, 0x42d96666    # 108.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x33

    .line 329
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42e33333    # 113.6f

    const v14, 0x42ebcccd    # 117.9f

    const v8, 0x42b83333    # 92.1f

    const v9, 0x42c0cccd    # 96.4f

    const v10, 0x42c96666    # 100.7f

    const/high16 v11, 0x42d20000    # 105.0f

    const v12, 0x42da999a    # 109.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x34

    .line 330
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42e46666    # 114.2f

    const v14, 0x42ed3333    # 118.6f

    const/high16 v8, 0x42b90000    # 92.5f

    const v9, 0x42c1cccd    # 96.9f

    const v10, 0x42ca6666    # 101.2f

    const v11, 0x42d33333    # 105.6f

    const v12, 0x42dbcccd    # 109.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x35

    .line 331
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42e5cccd    # 114.9f

    const v14, 0x42ee6666    # 119.2f

    const/high16 v8, 0x42ba0000    # 93.0f

    const v9, 0x42c2cccd    # 97.4f

    const v10, 0x42cb6666    # 101.7f

    const v11, 0x42d43333    # 106.1f

    const/high16 v12, 0x42dd0000    # 110.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x36

    .line 332
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42e70000    # 115.5f

    const v14, 0x42efcccd    # 119.9f

    const v8, 0x42bacccd    # 93.4f

    const v9, 0x42c3999a    # 97.8f

    const v10, 0x42cc999a    # 102.3f

    const v11, 0x42d56666    # 106.7f

    const v12, 0x42de3333    # 111.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x37

    .line 333
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42e83333    # 116.1f

    const v14, 0x42f13333    # 120.6f

    const v8, 0x42bbcccd    # 93.9f

    const v9, 0x42c4999a    # 98.3f

    const v10, 0x42cd999a    # 102.8f

    const v11, 0x42d66666    # 107.2f

    const v12, 0x42df6666    # 111.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x38

    .line 334
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42e96666    # 116.7f

    const v14, 0x42f26666    # 121.2f

    const v8, 0x42bc999a    # 94.3f

    const v9, 0x42c5999a    # 98.8f

    const v10, 0x42ce999a    # 103.3f

    const v11, 0x42d7999a    # 107.8f

    const v12, 0x42e0999a    # 112.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x39

    .line 335
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42eacccd    # 117.4f

    const v14, 0x42f3cccd    # 121.9f

    const v8, 0x42bd6666    # 94.7f

    const v9, 0x42c6999a    # 99.3f

    const v10, 0x42cf999a    # 103.8f

    const v11, 0x42d8999a    # 108.3f

    const v12, 0x42e1999a    # 112.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3a

    .line 336
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42ec0000    # 118.0f

    const v14, 0x42f53333    # 122.6f

    const v8, 0x42be6666    # 95.2f

    const v9, 0x42c76666    # 99.7f

    const v10, 0x42d0999a    # 104.3f

    const v11, 0x42d9cccd    # 108.9f

    const v12, 0x42e2cccd    # 113.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3b

    .line 337
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42ed3333    # 118.6f

    const v14, 0x42f66666    # 123.2f

    const v8, 0x42bf3333    # 95.6f

    const v9, 0x42c86666    # 100.2f

    const v10, 0x42d1999a    # 104.8f

    const v11, 0x42dacccd    # 109.4f

    const/high16 v12, 0x42e40000    # 114.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3c

    .line 338
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42ee6666    # 119.2f

    const v14, 0x42f7cccd    # 123.9f

    const v8, 0x42c03333    # 96.1f

    const v9, 0x42c96666    # 100.7f

    const v10, 0x42d2999a    # 105.3f

    const/high16 v11, 0x42dc0000    # 110.0f

    const v12, 0x42e53333    # 114.6f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3d

    .line 339
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42eecccd    # 119.4f

    const/high16 v14, 0x42f80000    # 124.0f

    const/high16 v8, 0x42c10000    # 96.5f

    const v9, 0x42ca3333    # 101.1f

    const v10, 0x42d36666    # 105.7f

    const v11, 0x42dc999a    # 110.3f

    const v12, 0x42e5cccd    # 114.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3e

    .line 340
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42f00000    # 120.0f

    const v14, 0x42f96666    # 124.7f

    const v8, 0x42c1cccd    # 96.9f

    const v9, 0x42cb3333    # 101.6f

    const v10, 0x42d46666    # 106.2f

    const v11, 0x42dd999a    # 110.8f

    const v12, 0x42e6cccd    # 115.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3f

    .line 341
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f13333    # 120.6f

    const v14, 0x42fa999a    # 125.3f

    const v8, 0x42c2cccd    # 97.4f

    const/high16 v9, 0x42cc0000    # 102.0f

    const v10, 0x42d56666    # 106.7f

    const v11, 0x42de999a    # 111.3f

    const/high16 v12, 0x42e80000    # 116.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x40

    .line 342
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f26666    # 121.2f

    const v14, 0x42fbcccd    # 125.9f

    const v8, 0x42c3999a    # 97.8f

    const/high16 v9, 0x42cd0000    # 102.5f

    const v10, 0x42d66666    # 107.2f

    const v11, 0x42dfcccd    # 111.9f

    const/high16 v12, 0x42e90000    # 116.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x41

    .line 343
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f3999a    # 121.8f

    const/high16 v14, 0x42fd0000    # 126.5f

    const v8, 0x42c46666    # 98.2f

    const/high16 v9, 0x42ce0000    # 103.0f

    const v10, 0x42d76666    # 107.7f

    const v11, 0x42e0cccd    # 112.4f

    const v12, 0x42ea3333    # 117.1f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x42

    .line 344
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f4cccd    # 122.4f

    const v14, 0x42fe3333    # 127.1f

    const v8, 0x42c56666    # 98.7f

    const v9, 0x42cecccd    # 103.4f

    const v10, 0x42d86666    # 108.2f

    const v11, 0x42e1cccd    # 112.9f

    const v12, 0x42eb6666    # 117.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x43

    .line 345
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42f60000    # 123.0f

    const v14, 0x42ff999a    # 127.8f

    const v8, 0x42c63333    # 99.1f

    const v9, 0x42cfcccd    # 103.9f

    const v10, 0x42d96666    # 108.7f

    const v11, 0x42e2cccd    # 113.4f

    const v12, 0x42ec6666    # 118.2f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x44

    .line 346
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f73333    # 123.6f

    const v14, 0x43006666    # 128.4f

    const/high16 v8, 0x42c70000    # 99.5f

    const v9, 0x42d0999a    # 104.3f

    const v10, 0x42da3333    # 109.1f

    const v11, 0x42e3cccd    # 113.9f

    const v12, 0x42ed6666    # 118.7f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x45

    .line 347
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f83333    # 124.1f

    const/high16 v14, 0x43010000    # 129.0f

    const v8, 0x42c7cccd    # 99.9f

    const v9, 0x42d1999a    # 104.8f

    const v10, 0x42db3333    # 109.6f

    const/high16 v11, 0x42e50000    # 114.5f

    const v12, 0x42ee999a    # 119.3f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {v2, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42f96666    # 124.7f

    const v14, 0x4301999a    # 129.6f

    const v8, 0x42c8cccd    # 100.4f

    const v9, 0x42d26666    # 105.2f

    const v10, 0x42dc3333    # 110.1f

    const/high16 v11, 0x42e60000    # 115.0f

    const v12, 0x42ef999a    # 119.8f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x47

    .line 349
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42fa6666    # 125.2f

    const v14, 0x4302199a    # 130.1f

    const v8, 0x42c9999a    # 100.8f

    const v9, 0x42d36666    # 105.7f

    const v10, 0x42dd3333    # 110.6f

    const/high16 v11, 0x42e70000    # 115.5f

    const v12, 0x42f0cccd    # 120.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x48

    .line 350
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42fb999a    # 125.8f

    const v14, 0x4302b333    # 130.7f

    const v8, 0x42ca6666    # 101.2f

    const v9, 0x42d43333    # 106.1f

    const/high16 v10, 0x42de0000    # 111.0f

    const/high16 v11, 0x42e80000    # 116.0f

    const v12, 0x42f1cccd    # 120.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x49

    .line 351
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42fccccd    # 126.4f

    const v14, 0x43034ccd    # 131.3f

    const v8, 0x42cb3333    # 101.6f

    const/high16 v9, 0x42d50000    # 106.5f

    const/high16 v10, 0x42df0000    # 111.5f

    const v11, 0x42e8cccd    # 116.4f

    const v12, 0x42f2cccd    # 121.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4a

    .line 352
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x42fdcccd    # 126.9f

    const v14, 0x4303e666    # 131.9f

    const/high16 v8, 0x42cc0000    # 102.0f

    const/high16 v9, 0x42d60000    # 107.0f

    const v10, 0x42dfcccd    # 111.9f

    const v11, 0x42e9cccd    # 116.9f

    const v12, 0x42f3cccd    # 121.9f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4b

    .line 353
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x42ff0000    # 127.5f

    const v14, 0x43048000    # 132.5f

    const v8, 0x42cccccd    # 102.4f

    const v9, 0x42d6cccd    # 107.4f

    const v10, 0x42e0cccd    # 112.4f

    const v11, 0x42eacccd    # 117.4f

    const v12, 0x42f4cccd    # 122.4f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4c

    .line 354
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const/high16 v13, 0x43000000    # 128.0f

    const/high16 v14, 0x43050000    # 133.0f

    const v8, 0x42cd999a    # 102.8f

    const v9, 0x42d7999a    # 107.8f

    const v10, 0x42e1cccd    # 112.9f

    const v11, 0x42ebcccd    # 117.9f

    const/high16 v12, 0x42f60000    # 123.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-static {v6, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x43008000    # 128.5f

    const v14, 0x4305999a    # 133.6f

    const v8, 0x42ce6666    # 103.2f

    const v9, 0x42d86666    # 108.2f

    const v10, 0x42e2999a    # 113.3f

    const v11, 0x42eccccd    # 118.4f

    const/high16 v12, 0x42f70000    # 123.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4e

    .line 356
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4301199a    # 129.1f

    const v14, 0x43063333    # 134.2f

    const v8, 0x42cf3333    # 103.6f

    const v9, 0x42d96666    # 108.7f

    const v10, 0x42e3999a    # 113.8f

    const v11, 0x42edcccd    # 118.9f

    const/high16 v12, 0x42f80000    # 124.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4f

    .line 357
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4301999a    # 129.6f

    const v14, 0x4306cccd    # 134.8f

    const v8, 0x42cfcccd    # 103.9f

    const v9, 0x42da3333    # 109.1f

    const v10, 0x42e46666    # 114.2f

    const v11, 0x42eecccd    # 119.4f

    const/high16 v12, 0x42f90000    # 124.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x50

    .line 358
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x43023333    # 130.2f

    const v14, 0x43074ccd    # 135.3f

    const v8, 0x42d0999a    # 104.3f

    const/high16 v9, 0x42db0000    # 109.5f

    const v10, 0x42e56666    # 114.7f

    const v11, 0x42ef999a    # 119.8f

    const/high16 v12, 0x42fa0000    # 125.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x51

    .line 359
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4302b333    # 130.7f

    const v14, 0x4307e666    # 135.9f

    const v8, 0x42d16666    # 104.7f

    const v9, 0x42dbcccd    # 109.9f

    const v10, 0x42e63333    # 115.1f

    const v11, 0x42f0999a    # 120.3f

    const/high16 v12, 0x42fb0000    # 125.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x52

    .line 360
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x43033333    # 131.2f

    const v14, 0x43088000    # 136.5f

    const v8, 0x42d23333    # 105.1f

    const v9, 0x42dc999a    # 110.3f

    const v10, 0x42e73333    # 115.6f

    const v11, 0x42f1999a    # 120.8f

    const/high16 v12, 0x42fc0000    # 126.0f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x53

    .line 361
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->ageKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;

    const v13, 0x4303cccd    # 131.8f

    const/high16 v14, 0x43090000    # 137.0f

    const/high16 v8, 0x42d30000    # 105.5f

    const v9, 0x42dd999a    # 110.8f

    const/high16 v10, 0x42e80000    # 116.0f

    const v11, 0x42f2999a    # 121.3f

    const/high16 v12, 0x42fd0000    # 126.5f

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WaRef;-><init>(FFFFFFF)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionMaps;->WH_MAP:Ljava/util/Map;

    .line 368
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v8, 0x40200000    # 2.5f

    const v9, 0x3ff33333    # 1.9f

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {v7, v9, v10, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-static {v3, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40266666    # 2.6f

    invoke-direct {v7, v10, v10, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-static {v4, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x400ccccd    # 2.2f

    const v9, 0x40333333    # 2.8f

    invoke-direct {v7, v8, v10, v9}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x30

    .line 371
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v7

    new-instance v5, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40133333    # 2.3f

    const/high16 v9, 0x40400000    # 3.0f

    invoke-direct {v5, v8, v10, v9}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x31

    .line 372
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v7

    new-instance v5, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4019999a    # 2.4f

    const v11, 0x404ccccd    # 3.2f

    invoke-direct {v5, v8, v10, v11}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x32

    .line 373
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40266666    # 2.6f

    const v11, 0x4059999a    # 3.4f

    invoke-direct {v7, v8, v10, v11}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x33

    .line 374
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40333333    # 2.8f

    const v11, 0x40666666    # 3.6f

    invoke-direct {v7, v8, v9, v11}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x34

    .line 375
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4039999a    # 2.9f

    const v11, 0x40733333    # 3.8f

    invoke-direct {v7, v8, v9, v11}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x35

    .line 376
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40466666    # 3.1f

    const/high16 v11, 0x40800000    # 4.0f

    invoke-direct {v7, v8, v9, v11}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x36

    .line 377
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40533333    # 3.3f

    const v12, 0x4089999a    # 4.3f

    invoke-direct {v7, v8, v9, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x37

    .line 378
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v8, 0x40600000    # 3.5f

    const/high16 v12, 0x40900000    # 4.5f

    invoke-direct {v7, v8, v9, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x38

    .line 379
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x406ccccd    # 3.7f

    const v12, 0x4099999a    # 4.8f

    invoke-direct {v7, v8, v11, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x39

    .line 380
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4079999a    # 3.9f

    const v12, 0x40a33333    # 5.1f

    invoke-direct {v7, v8, v11, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3a

    .line 381
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40833333    # 4.1f

    const v12, 0x40accccd    # 5.4f

    invoke-direct {v7, v8, v11, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3b

    .line 382
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4089999a    # 4.3f

    const v12, 0x40b33333    # 5.6f

    invoke-direct {v7, v8, v11, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3c

    .line 383
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v8, 0x40900000    # 4.5f

    const v12, 0x40bccccd    # 5.9f

    invoke-direct {v7, v8, v11, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3d

    .line 384
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40c33333    # 6.1f

    const v12, 0x40966666    # 4.7f

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-direct {v7, v12, v13, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3e

    .line 385
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x409ccccd    # 4.9f

    const v12, 0x40cccccd    # 6.4f

    invoke-direct {v7, v8, v13, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3f

    .line 386
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40a33333    # 5.1f

    const v12, 0x40d33333    # 6.6f

    invoke-direct {v7, v8, v13, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x40

    .line 387
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40a9999a    # 5.3f

    const v12, 0x40dccccd    # 6.9f

    invoke-direct {v7, v8, v13, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x41

    .line 388
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v8, 0x40b00000    # 5.5f

    const v12, 0x40e33333    # 7.1f

    invoke-direct {v7, v8, v13, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x42

    .line 389
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40e9999a    # 7.3f

    const v12, 0x40b33333    # 5.6f

    const/high16 v14, 0x40c00000    # 6.0f

    invoke-direct {v7, v12, v14, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x43

    .line 390
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40b9999a    # 5.8f

    const/high16 v12, 0x40f00000    # 7.5f

    invoke-direct {v7, v8, v14, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x44

    .line 391
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40f66666    # 7.7f

    invoke-direct {v7, v14, v14, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x45

    .line 392
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40c33333    # 6.1f

    const/high16 v12, 0x41000000    # 8.0f

    invoke-direct {v7, v8, v14, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-static {v2, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40c9999a    # 6.3f

    const v15, 0x41033333    # 8.2f

    invoke-direct {v7, v8, v14, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x47

    .line 394
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x41066666    # 8.4f

    const/high16 v15, 0x40d00000    # 6.5f

    const/high16 v13, 0x40e00000    # 7.0f

    invoke-direct {v7, v15, v13, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x48

    .line 395
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40d33333    # 6.6f

    const v15, 0x4109999a    # 8.6f

    invoke-direct {v7, v8, v13, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x49

    .line 396
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40d9999a    # 6.8f

    const v15, 0x410ccccd    # 8.8f

    invoke-direct {v7, v8, v13, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4a

    .line 397
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40dccccd    # 6.9f

    const/high16 v15, 0x41100000    # 9.0f

    invoke-direct {v7, v8, v13, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4b

    .line 398
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40e33333    # 7.1f

    const v14, 0x4111999a    # 9.1f

    invoke-direct {v7, v8, v13, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4c

    .line 399
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40e66666    # 7.2f

    const v14, 0x4114cccd    # 9.3f

    invoke-direct {v7, v8, v13, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-static {v6, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40eccccd    # 7.4f

    const/high16 v14, 0x41180000    # 9.5f

    invoke-direct {v7, v8, v12, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4e

    .line 401
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v8, 0x40f00000    # 7.5f

    const v14, 0x411b3333    # 9.7f

    invoke-direct {v7, v8, v12, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x4f

    .line 402
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40f66666    # 7.7f

    const v14, 0x411e6666    # 9.9f

    invoke-direct {v7, v8, v12, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x50

    .line 403
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x40f9999a    # 7.8f

    const v14, 0x4121999a    # 10.1f

    invoke-direct {v7, v8, v12, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x51

    .line 404
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4124cccd    # 10.3f

    invoke-direct {v7, v12, v12, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x52

    .line 405
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4101999a    # 8.1f

    const/high16 v14, 0x41280000    # 10.5f

    invoke-direct {v7, v8, v12, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x53

    .line 406
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4104cccd    # 8.3f

    const v14, 0x412b3333    # 10.7f

    invoke-direct {v7, v8, v15, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x54

    .line 407
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v8, 0x41080000    # 8.5f

    const/high16 v14, 0x41300000    # 11.0f

    invoke-direct {v7, v8, v15, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x55

    .line 408
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x410b3333    # 8.7f

    const v12, 0x41333333    # 11.2f

    invoke-direct {v7, v8, v15, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x56

    .line 409
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x410e6666    # 8.9f

    const/high16 v12, 0x41380000    # 11.5f

    invoke-direct {v7, v8, v15, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x57

    .line 410
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x413e6666    # 11.9f

    const v12, 0x41133333    # 9.2f

    const/high16 v15, 0x41200000    # 10.0f

    invoke-direct {v7, v12, v15, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x58

    .line 411
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x41166666    # 9.4f

    const v12, 0x4141999a    # 12.1f

    invoke-direct {v7, v8, v15, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x59

    .line 412
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4119999a    # 9.6f

    const v12, 0x41466666    # 12.4f

    invoke-direct {v7, v8, v15, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x5a

    .line 413
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x411ccccd    # 9.8f

    const v12, 0x4149999a    # 12.6f

    invoke-direct {v7, v8, v15, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x5b

    .line 414
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x414e6666    # 12.9f

    invoke-direct {v7, v15, v15, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x5c

    .line 415
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x41233333    # 10.2f

    const v12, 0x4151999a    # 13.1f

    invoke-direct {v7, v8, v14, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x5d

    .line 416
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x41266666    # 10.4f

    const v12, 0x41566666    # 13.4f

    invoke-direct {v7, v8, v14, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x5e

    .line 417
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4129999a    # 10.6f

    const v12, 0x4159999a    # 13.6f

    invoke-direct {v7, v8, v14, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x5f

    .line 418
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x412ccccd    # 10.8f

    const v12, 0x415e6666    # 13.9f

    invoke-direct {v7, v8, v14, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x60

    .line 419
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x412e6666    # 10.9f

    const v12, 0x4161999a    # 14.1f

    invoke-direct {v7, v8, v14, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x61

    .line 420
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x41666666    # 14.4f

    const v12, 0x4131999a    # 11.1f

    const/high16 v15, 0x41400000    # 12.0f

    invoke-direct {v7, v12, v15, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x62

    .line 421
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4134cccd    # 11.3f

    const v12, 0x416b3333    # 14.7f

    invoke-direct {v7, v8, v15, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x63

    .line 422
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v8, 0x41380000    # 11.5f

    const v12, 0x416e6666    # 14.9f

    invoke-direct {v7, v8, v15, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x64

    .line 423
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x413b3333    # 11.7f

    const v12, 0x41733333    # 15.2f

    invoke-direct {v7, v8, v15, v12}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x65

    .line 424
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v8, 0x41780000    # 15.5f

    const/high16 v12, 0x41500000    # 13.0f

    invoke-direct {v7, v15, v12, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x66

    .line 425
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x41433333    # 12.2f

    const v15, 0x417ccccd    # 15.8f

    invoke-direct {v7, v8, v12, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x67

    .line 426
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x41466666    # 12.4f

    const v15, 0x4180cccd    # 16.1f

    invoke-direct {v7, v8, v12, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x68

    .line 427
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4149999a    # 12.6f

    const v15, 0x41833333    # 16.4f

    invoke-direct {v7, v8, v12, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x69

    .line 428
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x41866666    # 16.8f

    const v15, 0x414e6666    # 12.9f

    const/high16 v12, 0x41600000    # 14.0f

    invoke-direct {v7, v15, v12, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x6a

    .line 429
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4151999a    # 13.1f

    const v15, 0x4188cccd    # 17.1f

    invoke-direct {v7, v8, v12, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x6b

    .line 430
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x41566666    # 13.4f

    const/high16 v15, 0x418c0000    # 17.5f

    invoke-direct {v7, v8, v12, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x6c

    .line 431
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x415b3333    # 13.7f

    const v15, 0x418e6666    # 17.8f

    invoke-direct {v7, v8, v12, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x6d

    .line 432
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4191999a    # 18.2f

    const v15, 0x415e6666    # 13.9f

    const/high16 v12, 0x41700000    # 15.0f

    invoke-direct {v7, v15, v12, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x6e

    .line 433
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x41633333    # 14.2f

    const v15, 0x4194cccd    # 18.6f

    invoke-direct {v7, v8, v12, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x6f

    .line 434
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v8, 0x41680000    # 14.5f

    const/high16 v15, 0x41980000    # 19.0f

    invoke-direct {v7, v8, v12, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x70

    .line 435
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x419b3333    # 19.4f

    const v15, 0x416ccccd    # 14.8f

    const/high16 v12, 0x41800000    # 16.0f

    invoke-direct {v7, v15, v12, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x71

    .line 436
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x4171999a    # 15.1f

    const v15, 0x419e6666    # 19.8f

    invoke-direct {v7, v8, v12, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x72

    .line 437
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v8, 0x41766666    # 15.4f

    const v15, 0x41a1999a    # 20.2f

    invoke-direct {v7, v8, v12, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x73

    .line 438
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v8, 0x41880000    # 17.0f

    const v15, 0x41a5999a    # 20.7f

    const v14, 0x417b3333    # 15.7f

    invoke-direct {v7, v14, v8, v15}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x74

    .line 439
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v14, 0x41a8cccd    # 21.1f

    invoke-direct {v7, v12, v8, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x75

    .line 440
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v14, 0x41ac0000    # 21.5f

    const v15, 0x41826666    # 16.3f

    invoke-direct {v7, v15, v8, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x76

    .line 441
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v8, 0x41900000    # 18.0f

    const/high16 v14, 0x41b00000    # 22.0f

    const v15, 0x4184cccd    # 16.6f

    invoke-direct {v7, v15, v8, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x77

    .line 442
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v14, 0x41b33333    # 22.4f

    const v15, 0x41873333    # 16.9f

    invoke-direct {v7, v15, v8, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x78

    .line 443
    invoke-static {v5, v2}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v14, 0x41b66666    # 22.8f

    const v15, 0x418a6666    # 17.3f

    invoke-direct {v7, v15, v8, v14}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v7, 0x3ff33333    # 1.9f

    const v8, 0x4019999a    # 2.4f

    invoke-direct {v5, v7, v10, v8}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-static {v3, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v5, 0x40266666    # 2.6f

    invoke-direct {v3, v10, v10, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40066666    # 2.1f

    const v5, 0x40333333    # 2.8f

    invoke-direct {v3, v4, v10, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x30

    .line 450
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40133333    # 2.3f

    const v5, 0x4039999a    # 2.9f

    invoke-direct {v3, v4, v10, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x31

    .line 451
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x4019999a    # 2.4f

    const v5, 0x40466666    # 3.1f

    invoke-direct {v3, v4, v10, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32

    .line 452
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40266666    # 2.6f

    const v5, 0x40533333    # 3.3f

    invoke-direct {v3, v4, v10, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x33

    .line 453
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x402ccccd    # 2.7f

    const/high16 v5, 0x40600000    # 3.5f

    invoke-direct {v3, v4, v9, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x34

    .line 454
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x4039999a    # 2.9f

    const v5, 0x40733333    # 3.8f

    invoke-direct {v3, v4, v9, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x35

    .line 455
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40466666    # 3.1f

    invoke-direct {v3, v4, v9, v11}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x36

    .line 456
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40533333    # 3.3f

    const v5, 0x4089999a    # 4.3f

    invoke-direct {v3, v4, v9, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x37

    .line 457
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40666666    # 3.6f

    const/high16 v5, 0x40900000    # 4.5f

    invoke-direct {v3, v4, v9, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x38

    .line 458
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40733333    # 3.8f

    const v5, 0x4099999a    # 4.8f

    invoke-direct {v3, v4, v11, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x39

    .line 459
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40a33333    # 5.1f

    invoke-direct {v3, v11, v11, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3a

    .line 460
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x4089999a    # 4.3f

    const v5, 0x40accccd    # 5.4f

    invoke-direct {v3, v4, v11, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3b

    .line 461
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v4, 0x40900000    # 4.5f

    const v5, 0x40b66666    # 5.7f

    invoke-direct {v3, v4, v11, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3c

    .line 462
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40966666    # 4.7f

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-direct {v3, v4, v5, v7}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3d

    .line 463
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40c9999a    # 6.3f

    invoke-direct {v3, v5, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e

    .line 464
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40a33333    # 5.1f

    const/high16 v7, 0x40d00000    # 6.5f

    invoke-direct {v3, v4, v5, v7}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3f

    .line 465
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40a9999a    # 5.3f

    const v7, 0x40d9999a    # 6.8f

    invoke-direct {v3, v4, v5, v7}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x40

    .line 466
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v4, 0x40b00000    # 5.5f

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-direct {v3, v4, v5, v13}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x41

    .line 467
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40b66666    # 5.7f

    const v7, 0x40e9999a    # 7.3f

    invoke-direct {v3, v4, v5, v7}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x42

    .line 468
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40bccccd    # 5.9f

    const/high16 v7, 0x40f00000    # 7.5f

    invoke-direct {v3, v4, v5, v7}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x43

    .line 469
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40c33333    # 6.1f

    const v7, 0x40f66666    # 7.7f

    invoke-direct {v3, v4, v5, v7}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x44

    .line 470
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x40c9999a    # 6.3f

    const/high16 v7, 0x41000000    # 8.0f

    invoke-direct {v3, v4, v5, v7}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45

    .line 471
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v4, 0x40d00000    # 6.5f

    const v5, 0x41033333    # 8.2f

    invoke-direct {v3, v4, v13, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-static {v2, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x40d33333    # 6.6f

    const v4, 0x41066666    # 8.4f

    invoke-direct {v2, v3, v13, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x47

    .line 473
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x40d9999a    # 6.8f

    const v4, 0x4109999a    # 8.6f

    invoke-direct {v2, v3, v13, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x48

    .line 474
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x410e6666    # 8.9f

    invoke-direct {v2, v13, v13, v3}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x49

    .line 475
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x40e66666    # 7.2f

    const v4, 0x4111999a    # 9.1f

    invoke-direct {v2, v3, v13, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4a

    .line 476
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x40e9999a    # 7.3f

    const v4, 0x4114cccd    # 9.3f

    invoke-direct {v2, v3, v13, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b

    .line 477
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v3, 0x40f00000    # 7.5f

    const/high16 v4, 0x41180000    # 9.5f

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4c

    .line 478
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x40f33333    # 7.6f

    const v4, 0x411b3333    # 9.7f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-static {v6, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x40f9999a    # 7.8f

    const v4, 0x411e6666    # 9.9f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e

    .line 480
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x40fccccd    # 7.9f

    const v4, 0x4121999a    # 10.1f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4f

    .line 481
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4101999a    # 8.1f

    const v4, 0x4124cccd    # 10.3f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x50

    .line 482
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x41033333    # 8.2f

    const v4, 0x41266666    # 10.4f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x51

    .line 483
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x41066666    # 8.4f

    const v4, 0x4129999a    # 10.6f

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x52

    .line 484
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v3, 0x41080000    # 8.5f

    const v4, 0x412ccccd    # 10.8f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    .line 485
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x410b3333    # 8.7f

    const/high16 v4, 0x41300000    # 11.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x54

    .line 486
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x410e6666    # 8.9f

    const v4, 0x4134cccd    # 11.3f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x55

    .line 487
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4111999a    # 9.1f

    const/high16 v4, 0x41380000    # 11.5f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x56

    .line 488
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4114cccd    # 9.3f

    const v4, 0x413b3333    # 11.7f

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x57

    .line 489
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4119999a    # 9.6f

    const v4, 0x41433333    # 12.2f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x58

    .line 490
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x411ccccd    # 9.8f

    const v4, 0x41466666    # 12.4f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x59

    .line 491
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4149999a    # 12.6f

    invoke-direct {v2, v5, v5, v3}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 492
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x41233333    # 10.2f

    const v4, 0x414e6666    # 12.9f

    const/high16 v5, 0x41300000    # 11.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5b

    .line 493
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x41266666    # 10.4f

    const v4, 0x4151999a    # 13.1f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5c

    .line 494
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4129999a    # 10.6f

    const v4, 0x41566666    # 13.4f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5d

    .line 495
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x412ccccd    # 10.8f

    const v4, 0x4159999a    # 13.6f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5e

    .line 496
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x415ccccd    # 13.8f

    invoke-direct {v2, v5, v5, v3}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5f

    .line 497
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4131999a    # 11.1f

    const v4, 0x4161999a    # 14.1f

    const/high16 v5, 0x41400000    # 12.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x60

    .line 498
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4134cccd    # 11.3f

    const v4, 0x4164cccd    # 14.3f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x61

    .line 499
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v3, 0x41380000    # 11.5f

    const v4, 0x4169999a    # 14.6f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x62

    .line 500
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x413b3333    # 11.7f

    const v4, 0x416ccccd    # 14.8f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x63

    .line 501
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x413e6666    # 11.9f

    const v4, 0x4171999a    # 15.1f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x64

    .line 502
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4141999a    # 12.1f

    const v4, 0x41766666    # 15.4f

    const/high16 v5, 0x41500000    # 13.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x65

    .line 503
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4144cccd    # 12.3f

    const v4, 0x4179999a    # 15.6f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x66

    .line 504
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v3, 0x41480000    # 12.5f

    const v4, 0x417e6666    # 15.9f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x67

    .line 505
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x414ccccd    # 12.8f

    const v4, 0x4181999a    # 16.2f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x68

    .line 506
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v3, 0x41840000    # 16.5f

    const/high16 v4, 0x41600000    # 14.0f

    invoke-direct {v2, v5, v4, v3}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x69

    .line 507
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x41533333    # 13.2f

    const v5, 0x41866666    # 16.8f

    invoke-direct {v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6a

    .line 508
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x41566666    # 13.4f

    const v5, 0x4189999a    # 17.2f

    invoke-direct {v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6b

    .line 509
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x415b3333    # 13.7f

    const/high16 v5, 0x418c0000    # 17.5f

    invoke-direct {v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6c

    .line 510
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x415e6666    # 13.9f

    const v4, 0x418e6666    # 17.8f

    const/high16 v5, 0x41700000    # 15.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6d

    .line 511
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4161999a    # 14.1f

    const v4, 0x4191999a    # 18.2f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6e

    .line 512
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x41666666    # 14.4f

    const/high16 v4, 0x41940000    # 18.5f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6f

    .line 513
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x4169999a    # 14.6f

    const v4, 0x41973333    # 18.9f

    invoke-direct {v2, v3, v5, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x70

    .line 514
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x416e6666    # 14.9f

    const v4, 0x4199999a    # 19.2f

    invoke-direct {v2, v3, v12, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x71

    .line 515
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x41733333    # 15.2f

    const v4, 0x419ccccd    # 19.6f

    invoke-direct {v2, v3, v12, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x72

    .line 516
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v3, 0x41766666    # 15.4f

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v2, v3, v12, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x73

    .line 517
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v3, 0x41880000    # 17.0f

    const v4, 0x41a33333    # 20.4f

    const v5, 0x417b3333    # 15.7f

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x74

    .line 518
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x41a66666    # 20.8f

    invoke-direct {v2, v12, v3, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x75

    .line 519
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x41a9999a    # 21.2f

    const v5, 0x4181999a    # 16.2f

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x76

    .line 520
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v3, 0x41900000    # 18.0f

    const v4, 0x41accccd    # 21.6f

    const/high16 v5, 0x41840000    # 16.5f

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x77

    .line 521
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const/high16 v4, 0x41b00000    # 22.0f

    const v5, 0x41866666    # 16.8f

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x78

    .line 522
    invoke-static {v1, v6}, Lcom/argusoft/sewa/android/app/util/nutrition/NutritionKeyUtil;->heightKey(IC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;

    const v4, 0x41b33333    # 22.4f

    const v5, 0x4188cccd    # 17.1f

    invoke-direct {v2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/util/nutrition/WhRef;-><init>(FFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
