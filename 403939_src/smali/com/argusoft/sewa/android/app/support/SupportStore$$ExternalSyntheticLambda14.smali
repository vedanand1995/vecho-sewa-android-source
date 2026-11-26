.class public final synthetic Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/argusoft/sewa/android/app/support/SupportStore$Send;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/support/SupportStore;

.field public final synthetic f$1:Lcom/argusoft/sewa/android/app/model/SupportCommentBean;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/support/SupportStore;Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda14;->f$0:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda14;->f$1:Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda14;->f$0:Lcom/argusoft/sewa/android/app/support/SupportStore;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda14;->f$1:Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/support/SupportStore;->lambda$sync$5$com-argusoft-sewa-android-app-support-SupportStore(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V

    return-void
.end method
