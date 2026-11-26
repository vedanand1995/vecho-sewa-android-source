.class Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$OnlineStatusChecker;
.super Landroid/os/AsyncTask;
.source "OPDFacilityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnlineStatusChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 489
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$1;)V
    .locals 0

    .line 489
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$OnlineStatusChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 492
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 489
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/OPDFacilityActivity$OnlineStatusChecker;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
