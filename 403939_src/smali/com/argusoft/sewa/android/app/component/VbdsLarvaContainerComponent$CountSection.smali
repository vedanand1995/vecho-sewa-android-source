.class Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;
.super Ljava/lang/Object;
.source "VbdsLarvaContainerComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountSection"
.end annotation


# instance fields
.field final container:Landroid/widget/LinearLayout;

.field final errorView:Lcom/google/android/material/textview/MaterialTextView;

.field final positiveField:Landroid/widget/EditText;

.field final searchedField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/google/android/material/textview/MaterialTextView;)V
    .locals 0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->container:Landroid/widget/LinearLayout;

    .line 559
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->searchedField:Landroid/widget/EditText;

    .line 560
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->positiveField:Landroid/widget/EditText;

    .line 561
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/VbdsLarvaContainerComponent$CountSection;->errorView:Lcom/google/android/material/textview/MaterialTextView;

    return-void
.end method
