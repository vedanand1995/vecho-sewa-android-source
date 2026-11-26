.class Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$3;
.super Ljava/lang/Object;
.source "MamtaDayActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->setMemberSelectionScreen(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;

.field final synthetic val$isSearch:Z

.field final synthetic val$selectedService:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$3;->val$selectedService:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$3;->val$isSearch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$3;->val$selectedService:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_$3;->val$isSearch:Z

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;->access$201(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity_;Ljava/lang/String;Z)V

    return-void
.end method
