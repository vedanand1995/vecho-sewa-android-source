.class public abstract Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyWorkLogAdapter.java"


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

.field private final myLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->context:Landroid/content/Context;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->adapterView:Ljava/util/Map;

    .line 43
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->myLogs:Ljava/util/List;

    return-void
.end method

.method private addChildView(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)Landroidx/cardview/widget/CardView;
    .locals 13

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->worklog_list_child_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 140
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->work_log_file_status_image:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 141
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->work_log_file_retry:I

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 142
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->work_log_status:I

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 144
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pdf"

    const-string v6, "image"

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->ic_image:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->ic_pdf:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 149
    :cond_1
    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->ic_pdf:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    :goto_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->context:Landroid/content/Context;

    sget v7, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {v4, v7}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 153
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v7, "P"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v8, 0x0

    const-string v9, "E"

    if-nez v4, :cond_2

    .line 154
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 156
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 158
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 159
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 160
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 162
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/high16 v5, 0x10000000

    .line 163
    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 164
    new-instance v5, Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {v5, v4}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 165
    invoke-virtual {v5, v8}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object v6

    .line 166
    invoke-virtual {v6}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x1

    .line 167
    invoke-virtual {v6, v10, v2, v2, v11}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V

    .line 168
    invoke-virtual {v6}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    .line 169
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfRenderer;->close()V

    .line 170
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 172
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v4, "S"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    const-string v1, "Synced"

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->colorAccent:I

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 184
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 186
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v5, "U"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    const-string v1, "Uploading..."

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->yellow:I

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 189
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 191
    :cond_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 192
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 193
    :cond_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getParentStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 194
    const-string v1, "Retry"

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v3, p1}, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;Landroid/widget/TextView;Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2

    .line 208
    :cond_8
    const-string v1, "Pending"

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 213
    :goto_2
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->work_log_file_date:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 215
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 216
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 217
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".png"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 218
    :cond_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 219
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".jpeg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 220
    :cond_a
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 221
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".jpg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 222
    :cond_b
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/pdf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 223
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".pdf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 225
    :cond_c
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 228
    :cond_d
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :goto_3
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_e
    const/16 p1, 0x8

    .line 232
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-object v0
.end method

.method static synthetic lambda$getView$0(Landroid/view/View;)V
    .locals 0

    .line 115
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->workLogAlert:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    if-eqz p0, :cond_0

    .line 116
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->workLogAlert:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->myLogs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->myLogs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 69
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->adapterView:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_6

    .line 70
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->myLogs:Ljava/util/List;

    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 71
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->myLogs:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;

    .line 73
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->worklog_list_view:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 74
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->llChild:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 76
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->work_log_status_image:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getUploadFileDataBean()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getUploadFileDataBean()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getUploadFileDataBean()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;

    .line 79
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->addChildView(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)Landroidx/cardview/widget/CardView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getImage()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v0, v2, :cond_1

    .line 84
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getImage()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :goto_1
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->work_log_date:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 95
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :goto_2
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->work_log_name:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 103
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :goto_3
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->work_log_task:I

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getTask()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 108
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getTask()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 111
    :cond_4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_4
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda0;-><init>()V

    .line 120
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->work_log_info:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 121
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 122
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, v0}, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 129
    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :goto_5
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->adapterView:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_6
    return-object p2
.end method

.method synthetic lambda$addChildView$2$com-argusoft-sewa-android-app-component-MyWorkLogAdapter(Landroid/widget/TextView;Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;Landroid/view/View;)V
    .locals 1

    .line 196
    const-string p3, "Uploading..."

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/argusoft/sewa/android/app/R$color;->yellow:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 199
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->retryUploading(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V

    .line 200
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string p3, "S"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 201
    const-string p2, "Synced"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->context:Landroid/content/Context;

    sget p3, Lcom/argusoft/sewa/android/app/R$color;->colorAccent:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method synthetic lambda$getView$1$com-argusoft-sewa-android-app-component-MyWorkLogAdapter(Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 2

    .line 124
    new-instance p3, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;->context:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/WorkLogScreenDataBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, -0x69

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    sput-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->workLogAlert:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 126
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->workLogAlert:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public abstract retryUploading(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V
.end method
