.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$6;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getBreastScreeningComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field final synthetic val$selectedCheckBoxTags:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 905
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$6;->val$selectedCheckBoxTags:Ljava/util/Set;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$6;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 909
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 911
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$6;->val$selectedCheckBoxTags:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 913
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$6;->val$selectedCheckBoxTags:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 915
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$6;->val$queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$6;->val$selectedCheckBoxTags:Ljava/util/Set;

    const-string v0, ","

    invoke-static {p2, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void
.end method
