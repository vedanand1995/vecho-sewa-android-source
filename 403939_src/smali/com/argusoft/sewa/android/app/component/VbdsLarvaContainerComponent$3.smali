.class Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;
.super Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$SimpleTextWatcher;
.source "VbdsLarvaContainerComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->buildCountSection(Landroid/widget/LinearLayout;Ljava/lang/String;)Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

.field final synthetic val$errorView:Lcom/google/android/material/textview/MaterialTextView;

.field final synthetic val$familyId:Ljava/lang/String;

.field final synthetic val$positiveField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Ljava/lang/String;Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;->this$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;->val$familyId:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;->val$positiveField:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;->val$errorView:Lcom/google/android/material/textview/MaterialTextView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$SimpleTextWatcher;-><init>(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$1;)V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 368
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;->this$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->access$300(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;)Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;->val$familyId:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;

    if-nez p2, :cond_0

    return-void

    .line 372
    :cond_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;->this$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    invoke-static {p3, p1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->access$400(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;->positiveContainers:Ljava/lang/Integer;

    .line 373
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;->this$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;->val$positiveField:Landroid/widget/EditText;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;->val$errorView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-static {p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->access$500(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$FamilyAnswer;Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V

    .line 374
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$3;->this$0:Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;->access$600(Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;)V

    return-void
.end method
