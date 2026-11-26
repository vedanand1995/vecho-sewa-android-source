.class public Lcom/argusoft/sewa/android/app/asynctask/ServerIsAliveAsyncTask;
.super Landroid/os/AsyncTask;
.source "ServerIsAliveAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/core/SewaService;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/asynctask/ServerIsAliveAsyncTask;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 18
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/asynctask/ServerIsAliveAsyncTask;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/core/SewaService;->getServerIsAlive()Z

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

    .line 7
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/asynctask/ServerIsAliveAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
