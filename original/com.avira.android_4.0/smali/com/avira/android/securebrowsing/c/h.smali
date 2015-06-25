.class public final Lcom/avira/android/securebrowsing/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/securebrowsing/c/q;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    const-string v0, "NanoHTTPD-"

    const-string v1, ""

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/h;->a:Ljava/io/File;

    .line 626
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/h;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/h;->b:Ljava/io/OutputStream;

    .line 627
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/h;->b:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 639
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 640
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
