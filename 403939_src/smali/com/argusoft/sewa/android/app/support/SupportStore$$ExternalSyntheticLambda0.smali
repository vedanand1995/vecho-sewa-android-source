.class public final synthetic Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/argusoft/sewa/android/app/support/SupportStore$IdSetter;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/model/SupportCommentBean;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/model/SupportCommentBean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Integer;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/model/SupportCommentBean;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/SupportCommentBean;->setId(Ljava/lang/Integer;)V

    return-void
.end method
