.class final Lcom/avira/android/license/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avira/android/license/ThirdPartyLicenseActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/license/ThirdPartyLicenseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/avira/android/license/c;->b:Lcom/avira/android/license/ThirdPartyLicenseActivity;

    iput-object p2, p0, Lcom/avira/android/license/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 80
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/license/c;->b:Lcom/avira/android/license/ThirdPartyLicenseActivity;

    invoke-static {v0}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->a(Lcom/avira/android/license/ThirdPartyLicenseActivity;)Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/license/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v2, p0, Lcom/avira/android/license/c;->b:Lcom/avira/android/license/ThirdPartyLicenseActivity;

    invoke-static {v2}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->b(Lcom/avira/android/license/ThirdPartyLicenseActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 97
    :goto_1
    return-void

    .line 91
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avira/android/license/c;->b:Lcom/avira/android/license/ThirdPartyLicenseActivity;

    invoke-static {v0}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->b(Lcom/avira/android/license/ThirdPartyLicenseActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
