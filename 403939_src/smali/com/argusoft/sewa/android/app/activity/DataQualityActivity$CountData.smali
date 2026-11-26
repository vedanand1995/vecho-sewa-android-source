.class Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;
.super Ljava/lang/Object;
.source "DataQualityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/DataQualityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CountData"
.end annotation


# instance fields
.field private failed:I

.field private successful:I

.field private total:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->type:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->total:I

    .line 63
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->successful:I

    .line 64
    iput p4, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->failed:I

    return-void
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->total:I

    return p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->total:I

    return p1
.end method

.method static synthetic access$108(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I
    .locals 2

    .line 54
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->total:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->total:I

    return v0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->successful:I

    return p0
.end method

.method static synthetic access$212(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I
    .locals 1

    .line 54
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->successful:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->successful:I

    return v0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->failed:I

    return p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->failed:I

    return p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DataQualityActivity$CountData;->type:Ljava/lang/String;

    return-object p0
.end method
