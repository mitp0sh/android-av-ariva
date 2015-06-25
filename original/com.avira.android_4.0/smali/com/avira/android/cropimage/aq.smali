.class public final Lcom/avira/android/cropimage/aq;
.super Lcom/avira/android/cropimage/a;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/cropimage/p;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoObject"


# direct methods
.method protected constructor <init>(Lcom/avira/android/cropimage/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p11}, Lcom/avira/android/cropimage/a;-><init>(Lcom/avira/android/cropimage/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final b(II)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/avira/android/cropimage/aq;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 118
    const/16 v0, 0x140

    const/high16 v1, 0x30000

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/cropimage/aq;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 54
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/avira/android/cropimage/aq;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/avira/android/cropimage/aq;->a()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/avira/android/cropimage/aq;

    invoke-virtual {p1}, Lcom/avira/android/cropimage/aq;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/avira/android/cropimage/aq;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoObject"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/avira/android/cropimage/aq;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
