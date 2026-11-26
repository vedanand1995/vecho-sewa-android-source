.class Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil$2;
.super Ljava/lang/Object;
.source "HiddenQuestionFormulaUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->showAlertIfYesInAny([Ljava/lang/String;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 2652
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/HiddenQuestionFormulaUtil;->access$000()Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method
