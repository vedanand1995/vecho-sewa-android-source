.class Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$4;
.super Ljava/lang/Object;
.source "SchoolListListener.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

.field final synthetic val$autoCompleteTextView:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;Landroid/widget/AutoCompleteTextView;)V
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

    .line 447
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$4;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$4;->val$autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 451
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$4;->val$autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    :cond_0
    return-void
.end method
