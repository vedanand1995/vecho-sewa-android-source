.class Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$18;
.super Ljava/lang/Object;
.source "MyDynamicComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getORDTComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ordtTestStartListner:Lcom/argusoft/sewa/android/app/component/listeners/ORDTTestStartListner;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/ORDTTestStartListner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3037
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$18;->val$ordtTestStartListner:Lcom/argusoft/sewa/android/app/component/listeners/ORDTTestStartListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 3040
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents$18;->val$ordtTestStartListner:Lcom/argusoft/sewa/android/app/component/listeners/ORDTTestStartListner;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/listeners/ORDTTestStartListner;->resetClick()V

    return-void
.end method
