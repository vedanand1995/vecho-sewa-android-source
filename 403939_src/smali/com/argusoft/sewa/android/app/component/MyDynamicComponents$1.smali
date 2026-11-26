.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$1;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getMembersListViewForFilariasisCampaign(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;

.field final synthetic val$member:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$1;->val$listener:Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$1;->val$member:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 391
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$1;->val$listener:Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$1;->val$member:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->onReasonChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
