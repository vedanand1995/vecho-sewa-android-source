.class Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$4;
.super Ljava/lang/Object;
.source "MamtaDayActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->setVisitSelectionScreen(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;

.field final synthetic val$visits:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$4;->val$visits:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$4;->val$visits:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->access$301(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/util/List;)V

    return-void
.end method
