.class Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$2;
.super Ljava/lang/Object;
.source "NPCBScreeningOA.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->createSearchRow(Ljava/lang/String;Ljava/lang/Runnable;[Lcom/google/android/material/textfield/TextInputLayout;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

.field final synthetic val$inputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;Lcom/google/android/material/textfield/TextInputLayout;)V
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

    .line 1170
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$2;->val$inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

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

    .line 1178
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$2;->val$inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
