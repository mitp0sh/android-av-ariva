.class final Lcom/avira/android/cropimage/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/cropimage/p;


# static fields
.field private static final TAG:Ljava/lang/String; = "UriImage"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/avira/android/cropimage/q;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/avira/android/cropimage/q;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/avira/android/cropimage/al;->b:Lcom/avira/android/cropimage/q;

    .line 39
    iput-object p2, p0, Lcom/avira/android/cropimage/al;->c:Landroid/content/ContentResolver;

    .line 40
    iput-object p3, p0, Lcom/avira/android/cropimage/al;->a:Landroid/net/Uri;

    .line 41
    return-void
.end method

.method private a()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/cropimage/al;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/avira/android/cropimage/al;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/al;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/avira/android/cropimage/al;->a:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/avira/android/cropimage/al;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 111
    iget-object v2, p0, Lcom/avira/android/cropimage/al;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/avira/android/cropimage/al;->c:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/avira/android/cropimage/am;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    const-string v1, "UriImage"

    const-string v2, "got exception decoding bitmap "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/avira/android/cropimage/al;->b(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 199
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 148
    const/16 v0, 0x140

    const/high16 v1, 0x30000

    invoke-direct {p0, v0, v1}, Lcom/avira/android/cropimage/al;->b(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
