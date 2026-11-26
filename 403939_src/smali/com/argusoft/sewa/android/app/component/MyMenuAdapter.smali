.class public Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyMenuAdapter.java"


# instance fields
.field private final adapterView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final images:[I

.field private isAnyLmsUpdate:Z

.field private isElevated:Z

.field private final names:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[Ljava/lang/String;ZZ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->images:[I

    .line 33
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->names:[Ljava/lang/String;

    .line 34
    iput-boolean p4, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->isElevated:Z

    .line 35
    iput-boolean p5, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->isAnyLmsUpdate:Z

    .line 36
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->adapterView:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLayoutAtPosition(I)Landroid/view/View;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->adapterView:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->adapterView:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->adapterView:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 70
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->adapterView:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_2

    .line 71
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->names:[Ljava/lang/String;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->images:[I

    if-eqz p3, :cond_2

    .line 72
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->home_screen_cards:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    iget-boolean p3, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->isElevated:Z

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/16 p3, -0x14

    .line 74
    invoke-virtual {p2, p3, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 75
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->card_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p3, v1}, Landroid/view/View;->setElevation(F)V

    .line 77
    rem-int/lit8 v1, p1, 0x3

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->line_background_left:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_0
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->card_imageView:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 82
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->images:[I

    aget v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->notification_badge:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 84
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->isAnyLmsUpdate:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->names:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, "Learning Management System"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 87
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :goto_0
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->card_textView:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->names:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->adapterView:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p2
.end method

.method public setNewNotification(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->isAnyLmsUpdate:Z

    .line 98
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method
