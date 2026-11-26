.class public Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomeMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


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

.field private final constant:[Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final images:[I

.field private isAnyLmsUpdate:Z

.field private isElevated:Z

.field private isNewNotification:Z

.field private final names:[Ljava/lang/String;

.field onItemClickListener:Lcom/argusoft/sewa/android/app/component/OnMenuItemViewVClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[Ljava/lang/String;[Ljava/lang/String;ZZZLcom/argusoft/sewa/android/app/component/OnMenuItemViewVClickListener;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->images:[I

    .line 38
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->names:[Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->constant:[Ljava/lang/String;

    .line 40
    iput-boolean p5, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->isElevated:Z

    .line 41
    iput-boolean p6, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->isNewNotification:Z

    .line 42
    iput-boolean p7, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->isAnyLmsUpdate:Z

    .line 43
    iput-object p8, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->onItemClickListener:Lcom/argusoft/sewa/android/app/component/OnMenuItemViewVClickListener;

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->adapterView:Ljava/util/Map;

    .line 45
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutAtPosition(I)Landroid/view/View;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->adapterView:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->adapterView:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->adapterView:Ljava/util/Map;

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

.method synthetic lambda$onBindViewHolder$0$com-argusoft-sewa-android-app-component-HomeMenuAdapter(ILcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->onItemClickListener:Lcom/argusoft/sewa/android/app/component/OnMenuItemViewVClickListener;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2}, Lcom/argusoft/sewa/android/app/component/OnMenuItemViewVClickListener;->onItemClickListener(ILandroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->onBindViewHolder(Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;I)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->names:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "Work Log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->names:[Ljava/lang/String;

    const-string v1, "Sync Status"

    aput-object v1, v0, p2

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->names:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->images:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->isElevated:Z

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setElevation(F)V

    .line 68
    rem-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->line_background_left:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_1
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->isNewNotification:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->constant:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v2, "ANNOUNCEMENTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->notificationBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    :cond_2
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->isAnyLmsUpdate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->constant:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v2, "LEARNING_MANAGEMENT_SYSTEM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->notificationBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->notificationBadge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :goto_0
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;ILcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;
    .locals 2

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->home_screen_cards:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->adapterView:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter$MyViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public setIconAtPosition(II)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->images:[I

    aput p1, v0, p2

    .line 121
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setLabelAtPosition(Ljava/lang/String;I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->names:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 126
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setNewNotification(ZZ)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->isNewNotification:Z

    .line 108
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->isAnyLmsUpdate:Z

    .line 109
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/HomeMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method
