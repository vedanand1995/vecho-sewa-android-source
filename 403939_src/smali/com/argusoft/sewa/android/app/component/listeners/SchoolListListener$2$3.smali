.class Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$3;
.super Ljava/lang/Object;
.source "SchoolListListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 441
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$3;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$3;->val$autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 444
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2$3;->val$autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void
.end method
