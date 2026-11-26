.class public Lcom/argusoft/sewa/android/app/util/SDScoreUtil;
.super Ljava/lang/Object;
.source "SDScoreUtil.java"


# static fields
.field private static sdScoreMapForBoys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sdScoreMapForGirls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v1, 0x2d

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1.7~1.9~2~2.2~2.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "1.8~2~2.2~2.4~2.6"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "2~2.1~2.3~2.5~2.8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "2.1~2.3~2.5~2.7~2.9"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v5, 0x31

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "2.2~2.4~2.6~2.9~3.1"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "2.4~2.6~2.8~3~3.3"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v7, 0x33

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "2.5~2.7~3~3.2~3.5"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v8, 0x34

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "2.7~2.9~3.2~3.5~3.8"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "2.9~3.1~3.4~3.7~4"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "3.1~3.3~3.6~3.9~4.3"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v12, 0x37

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "3.3~3.6~3.8~4.2~4.5"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v13, 0x38

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "3.5~3.8~4.1~4.4~4.8"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x39

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "3.7~4~4.3~4.7~5.1"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v15, 0x3a

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v14

    const-string v14, "3.9~4.3~4.6~5~5.4"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x3b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v17, v15

    const-string v15, "4.1~4.5~4.8~5.3~5.7"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v15, 0x3c

    move-object/from16 v18, v14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "4.3~4.7~5.1~5.5~6"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x3d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "4.5~4.9~5.3~5.8~6.3"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x3e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "4.7~5.1~5.6~6~6.5"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x3f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "4.9~5.3~5.8~6.2~6.8"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x40

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "5.1~5.5~6~6.5~7"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x41

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "5.3~5.7~6.2~6.7~7.3"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x42

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "5.5~5.9~6.4~6.9~7.5"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x43

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "5.6~6.1~6.6~7.1~7.7"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x44

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "5.8~6.3~6.8~7.3~8"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x45

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "6~6.5~7~7.6~8.2"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x46

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "6.1~6.6~7.2~7.8~8.4"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x47

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "6.3~6.8~7.4~8~8.6"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x48

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "6.4~7~7.6~8.2~8.9"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x49

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "6.6~7.2~7.7~8.4~9.1"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x4a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "6.7~7.3~7.9~8.6~9.3"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x4b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "6.9~7.5~8.1~8.8~9.5"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x4c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "7~7.6~8.3~8.9~9.7"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x4d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "7.2~7.8~8.4~9.1~9.9"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x4e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "7.3~7.9~8.6~9.3~10.1"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x4f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "7.4~8.1~8.7~9.5~10.3"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x50

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "7.6~8.2~8.9~9.6~10.4"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x51

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "7.7~8.4~9.1~9.8~10.6"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x52

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "7.9~8.5~9.2~10~10.8"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x53

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "8~8.7~9.4~10.2~11"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x54

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "8.2~8.9~9.6~10.4~11.3"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x55

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "8.4~9.1~9.8~10.6~11.5"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x56

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "8.6~9.3~10~10.8~11.7"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x57

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "8.9~9.6~10.4~11.2~12.2"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x58

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "9.1~9.8~10.6~11.5~12.4"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x59

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "9.3~10~10.8~11.7~12.6"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x5a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "9.4~10.2~11~11.9~12.9"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x5b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "9.6~10.4~11.2~12.1~13.1"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x5c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "9.8~10.6~11.4~12.3~13.4"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x5d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "9.9~10.8~11.6~12.6~13.6"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x5e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "10.1~11~11.8~12.8~13.8"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x5f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "10.3~11.1~12~13~14.1"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x60

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "10.4~11.3~12.2~13.2~14.3"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x61

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "10.6~11.5~12.4~13.4~14.6"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x62

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "10.8~11.7~12.6~13.7~14.8"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x63

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "11~11.9~12.9~13.9~15.1"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x64

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "11.2~12.1~13.1~14.2~15.4"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x65

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "11.3~12.3~13.3~14.4~15.6"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x66

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "11.5~12.5~13.6~14.7~15.9"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x67

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "11.7~12.8~13.8~14.9~16.2"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x68

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "11.9~13~14~15.2~16.5"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x69

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "12.1~13.2~14.3~15.5~16.8"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x6a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "12.3~13.4~14.5~15.8~17.2"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x6b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "12.5~13.7~14.8~16.1~17.5"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x6c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "12.7~13.9~15.1~16.4~17.8"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x6d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "12.9~14.1~15.3~16.7~18.2"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x6e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "13.2~14.4~15.6~17~18.5"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x6f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "13.4~14.6~15.9~17.3~18.9"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x70

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "13.6~14.9~16.2~17.6~19.2"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x71

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "13.8~15.2~16.5~18~19.6"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x72

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "14.1~15.4~16.8~18.3~20"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x73

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "14.3~15.7~17.1~18.6~20.4"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x74

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "14.6~16~17.4~19~20.8"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x75

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "14.8~16.2~17.7~19.3~21.2"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x76

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "15~16.5~18~19.7~21.6"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x77

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "15.3~16.8~18.3~20~22"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    const/16 v14, 0x78

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "15.5~17.1~18.6~20.4~22.4"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    .line 102
    const-string v14, "1.7~1.9~2.1~2.3~2.5"

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "1.9~2~2.2~2.4~2.6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "2~2.2~2.4~2.6~2.8"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "2.1~2.3~2.5~2.7~3"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "2.2~2.4~2.6~2.9~3.2"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "2.4~2.6~2.8~3.1~3.4"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "2.5~2.8~3~3.3~3.6"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "2.8~3.1~3.4~3.7~4"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "3~3.3~3.6~3.9~4.3"

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "3.2~3.5~3.8~4.2~4.5"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "3.4~3.7~4~4.4~4.8"

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "3.6~3.9~4.3~4.6~5.1"

    move-object/from16 v2, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "3.8~4.1~4.5~4.9~5.4"

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const-string v1, "3.9~4.3~4.7~5.1~5.6"

    move-object/from16 v2, v18

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "4.1~4.5~4.9~5.4~5.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "4.3~4.7~5.1~5.6~6.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "4.5~4.9~5.3~5.8~6.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "4.7~5.1~5.5~6~6.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "4.8~5.3~5.7~6.3~6.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5~5.5~5.9~6.5~7.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5.1~5.6~6.1~6.7~7.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5.3~5.8~6.3~6.9~7.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5.5~6~6.5~7.1~7.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5.6~6.1~6.7~7.3~8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5.8~6.3~6.9~7.5~8.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5.9~6.5~7~7.7~8.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6~6.6~7.2~7.8~8.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6.2~6.8~7.4~8~8.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6.3~6.9~7.5~8.2~9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6.5~7.1~7.7~8.4~9.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6.6~7.2~7.8~8.5~9.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6.7~7.4~8~8.7~9.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6.9~7.5~8.2~8.9~9.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "7~7.7~8.3~9.1~9.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "7.1~7.8~8.5~9.2~10.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "7.3~8~8.7~9.4~10.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "7.5~8.1~8.8~9.6~10.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "7.6~8.3~9~9.8~10.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "7.8~8.5~9.2~10.1~11"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "8~8.7~9.4~10.3~11.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "8.1~8.9~9.7~10.5~11.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "8.4~9.2~10~10.9~11.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "8.6~9.4~10.2~11.1~12.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "8.8~9.6~10.4~11.4~12.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "9~9.8~10.6~11.6~12.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "9.1~10~10.9~11.8~12.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "9.3~10.2~11.1~12~13.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "9.5~10.4~11.3~12.3~13.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "9.7~10.6~11.5~12.5~13.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "9.8~10.8~11.7~12.7~13.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "10~10.9~11.9~12.9~14.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "10.2~11.1~12.1~13.2~14.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "10.4~11.3~12.3~13.4~14.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "10.5~11.5~12.5~13.7~14.9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "10.7~11.7~12.8~13.9~15.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "10.9~12~13~14.2~15.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "11.1~12.2~13.3~14.5~15.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "11.3~12.4~13.5~14.7~16.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "11.5~12.6~13.8~15~16.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "11.8~12.9~14~15.3~16.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "12~13.1~14.3~15.6~17.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "12.2~13.4~14.6~15.9~17.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "12.4~13.7~14.9~16.3~17.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "12.7~13.9~15.2~16.6~18.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "12.9~14.2~15.5~17~18.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "13.2~14.5~15.8~17.3~19"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "13.5~14.8~16.2~17.7~19.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "13.7~15.1~16.5~18~19.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "14~15.4~16.8~18.4~20.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "14.3~15.7~17.2~18.8~20.7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "14.5~16~17.5~19.2~21.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "14.8~16.3~17.8~19.6~21.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "15.1~16.6~18.2~19.9~22"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x77

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "15.4~16.9~18.5~20.3~22.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "15.6~17.3~18.9~20.7~22.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateSDScore(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 182
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 183
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    .line 185
    :goto_0
    const-string v3, "M"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "MEDIAN"

    const-string v5, "NONE"

    const-string v6, "SD1"

    const-string v8, "SD2"

    const/4 v9, 0x3

    const-string v10, "SD3"

    const/4 v11, 0x2

    const-string v12, "SD4"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "Cannot be calculated"

    const-string v7, "~"

    if-nez v3, :cond_1

    const-string v3, "Male"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 186
    :cond_1
    sget-object v3, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForBoys:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 188
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v15

    if-nez v0, :cond_2

    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object v3, v1, v14

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    return-object v12

    .line 193
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object v3, v1, v13

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    return-object v10

    .line 195
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object v3, v1, v11

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5

    return-object v8

    .line 197
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    return-object v6

    .line 199
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    return-object v4

    :cond_7
    return-object v5

    :cond_8
    :goto_1
    return-object v16

    .line 207
    :cond_9
    const-string v3, "F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "Female"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 208
    :cond_a
    sget-object v1, Lcom/argusoft/sewa/android/app/util/SDScoreUtil;->sdScoreMapForGirls:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 210
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v15

    if-nez v0, :cond_b

    goto :goto_2

    .line 213
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object v3, v1, v14

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_c

    return-object v12

    .line 215
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object v3, v1, v13

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_d

    return-object v10

    .line 217
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object v3, v1, v11

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_e

    return-object v8

    .line 219
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_f

    return-object v6

    .line 221
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_10

    return-object v4

    :cond_10
    return-object v5

    :cond_11
    :goto_2
    return-object v16

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSDScoreForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 233
    const-string v0, "NONE"

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "MEDIAN"

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "SD4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "SD3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "SD2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "SD1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return-object v0

    .line 236
    :pswitch_0
    const-string p0, "Less than -4"

    return-object p0

    .line 238
    :pswitch_1
    const-string p0, "-4 to -3"

    return-object p0

    .line 240
    :pswitch_2
    const-string p0, "-3 to -2"

    return-object p0

    .line 242
    :pswitch_3
    const-string p0, "-2 to -1"

    return-object p0

    :pswitch_4
    return-object v2

    :cond_5
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x78ae7ef6 -> :sswitch_4
        0x14000 -> :sswitch_3
        0x14001 -> :sswitch_2
        0x14002 -> :sswitch_1
        0x14003 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
