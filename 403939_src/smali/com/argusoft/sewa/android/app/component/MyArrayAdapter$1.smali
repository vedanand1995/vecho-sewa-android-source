.class Lcom/argusoft/sewa/android/app/component/MyArrayAdapter$1;
.super Ljava/lang/Object;
.source "MyArrayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;

.field final synthetic val$finalItem:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;Lcom/google/android/material/textview/MaterialTextView;)V
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

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter$1;->this$0:Lcom/argusoft/sewa/android/app/component/MyArrayAdapter;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter$1;->val$finalItem:Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyArrayAdapter$1;->val$finalItem:Lcom/google/android/material/textview/MaterialTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setSingleLine(Z)V

    return-void
.end method
