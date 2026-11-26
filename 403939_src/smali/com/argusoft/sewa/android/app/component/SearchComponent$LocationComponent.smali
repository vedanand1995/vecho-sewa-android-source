.class Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SearchComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/SearchComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationComponent"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final hint:Ljava/lang/String;

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/SearchComponent;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/component/SearchComponent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 544
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->this$0:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    .line 545
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 546
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->context:Landroid/content/Context;

    .line 547
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->hint:Ljava/lang/String;

    .line 548
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->hint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->setFocusable(Z)V

    .line 557
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->setEnabled(Z)V

    const/4 v0, 0x4

    .line 558
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->setInputType(I)V

    .line 559
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->line_background_bottom:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public updateLocation(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationComponent;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :goto_0
    return-void
.end method
