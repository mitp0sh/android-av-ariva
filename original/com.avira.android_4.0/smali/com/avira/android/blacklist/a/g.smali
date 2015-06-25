.class final Lcom/avira/android/blacklist/a/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/a/f;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/avira/android/blacklist/model/BLContact;

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/avira/android/blacklist/a/f;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 170
    iput-object p1, p0, Lcom/avira/android/blacklist/a/g;->a:Lcom/avira/android/blacklist/a/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/avira/android/blacklist/a/g;->b:Landroid/widget/ImageView;

    .line 172
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    iput-object v0, p0, Lcom/avira/android/blacklist/a/g;->c:Lcom/avira/android/blacklist/model/BLContact;

    .line 173
    iput-object p3, p0, Lcom/avira/android/blacklist/a/g;->d:Landroid/graphics/Bitmap;

    .line 174
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/avira/android/blacklist/a/g;->a:Lcom/avira/android/blacklist/a/f;

    iget-object v1, p0, Lcom/avira/android/blacklist/a/g;->c:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLContact;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/blacklist/a/g;->c:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v2}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avira/android/blacklist/a/f;->a(Lcom/avira/android/blacklist/a/f;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/avira/android/blacklist/a/g;->a:Lcom/avira/android/blacklist/a/f;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/avira/android/blacklist/a/f;->a(Lcom/avira/android/blacklist/a/f;J)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/a/g;->d:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/avira/android/blacklist/a/g;->d:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 162
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/avira/android/blacklist/a/g;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/a/g;->c:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLContact;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/avira/android/blacklist/a/g;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/blacklist/a/g;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
