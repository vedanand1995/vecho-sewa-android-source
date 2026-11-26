.class Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$SaveOnChangeWatcher;
.super Ljava/lang/Object;
.source "CheckBoxWithTextBoxAadhaarListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOnChangeWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;


# direct methods
.method private constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$SaveOnChangeWatcher;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$1;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$SaveOnChangeWatcher;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 238
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener$SaveOnChangeWatcher;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/CheckBoxWithTextBoxAadhaarListener;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
