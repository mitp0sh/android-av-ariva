.class final Lcom/avira/android/antivirus/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/antivirus/aa;


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/Updater;

.field private b:Z

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/avira/android/antivirus/Updater;)V
    .locals 1

    .prologue
    .line 170
    iput-object p1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/antivirus/bm;->b:Z

    .line 174
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/bm;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/antivirus/Updater;B)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/avira/android/antivirus/bm;-><init>(Lcom/avira/android/antivirus/Updater;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 181
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/avira/android/antivirus/bm;->b:Z

    .line 183
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "Initializing Update installation.... "

    invoke-static {v0, v1, v2}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "Stopping any ongoing scan... "

    invoke-static {v0, v1, v2}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Antivirus;)V

    .line 194
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v2, "UPDTR"

    const-string v3, "Installing Updates.... "

    invoke-static {v1, v2, v3}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    iget-object v2, p0, Lcom/avira/android/antivirus/bm;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/avira/android/antivirus/af;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v1}, Lcom/avira/android/antivirus/Updater;->c(Lcom/avira/android/antivirus/Updater;)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v2, "UPDTR"

    const-string v3, "Restarting Scan Engine..."

    invoke-static {v1, v2, v3}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->b(Lcom/avira/android/antivirus/Antivirus;)V

    .line 209
    invoke-static {}, Lcom/avira/android/antivirus/af;->d()V

    .line 212
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->y()V

    .line 215
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->b()V

    .line 217
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->registerDemandAndAccessScannerContext()V

    .line 222
    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandVdfVersion()Ljava/lang/String;

    .line 226
    :cond_1
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/utilities/i;->c(Ljava/lang/String;)Z

    .line 228
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "Update Completed Successfully!"

    invoke-static {v0, v1, v2}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/InvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->d(Lcom/avira/android/antivirus/Updater;)V

    .line 246
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->e(Lcom/avira/android/antivirus/Updater;)V

    .line 248
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->f(Lcom/avira/android/antivirus/Updater;)Z

    .line 250
    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    invoke-static {v0}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    .line 252
    iget-boolean v0, p0, Lcom/avira/android/antivirus/bm;->b:Z

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "Restarting Scan Engine due to Installation failure..."

    invoke-static {v0, v1, v2}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->b()V

    .line 263
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    .line 266
    :try_start_1
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->b(Lcom/avira/android/antivirus/Antivirus;)V
    :try_end_1
    .catch Ljava/io/InvalidObjectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 277
    :goto_0
    invoke-static {}, Lcom/avira/android/antivirus/af;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->c()V

    .line 283
    :cond_2
    invoke-static {}, Lcom/avira/android/antivirus/be;->a()V

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "Update Cleanup Completed Successfully!"

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void

    .line 232
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/avira/android/antivirus/bm;->b:Z

    .line 234
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "Unexpected Error in performing Update [Code 01]"

    invoke-static {v0, v1, v2}, Lcom/avira/android/antivirus/Updater;->c(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->d(Lcom/avira/android/antivirus/Updater;)V

    .line 246
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->e(Lcom/avira/android/antivirus/Updater;)V

    .line 248
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->f(Lcom/avira/android/antivirus/Updater;)Z

    .line 250
    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    invoke-static {v0}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    .line 252
    iget-boolean v0, p0, Lcom/avira/android/antivirus/bm;->b:Z

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "Restarting Scan Engine due to Installation failure..."

    invoke-static {v0, v1, v2}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->b()V

    .line 263
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    .line 266
    :try_start_3
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->b(Lcom/avira/android/antivirus/Antivirus;)V
    :try_end_3
    .catch Ljava/io/InvalidObjectException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 277
    :goto_2
    invoke-static {}, Lcom/avira/android/antivirus/af;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 279
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->c()V

    .line 283
    :cond_4
    invoke-static {}, Lcom/avira/android/antivirus/be;->a()V

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "Update Cleanup Completed Successfully!"

    goto :goto_1

    .line 238
    :catch_1
    move-exception v0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/avira/android/antivirus/bm;->b:Z

    .line 240
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "Unexpected Error in performing Update [Code 02]"

    invoke-static {v0, v1, v2}, Lcom/avira/android/antivirus/Updater;->c(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->d(Lcom/avira/android/antivirus/Updater;)V

    .line 246
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->e(Lcom/avira/android/antivirus/Updater;)V

    .line 248
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->f(Lcom/avira/android/antivirus/Updater;)Z

    .line 250
    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    invoke-static {v0}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    .line 252
    iget-boolean v0, p0, Lcom/avira/android/antivirus/bm;->b:Z

    if-eqz v0, :cond_7

    .line 254
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "Restarting Scan Engine due to Installation failure..."

    invoke-static {v0, v1, v2}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->b()V

    .line 263
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    .line 266
    :try_start_5
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->b(Lcom/avira/android/antivirus/Antivirus;)V
    :try_end_5
    .catch Ljava/io/InvalidObjectException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 277
    :goto_3
    invoke-static {}, Lcom/avira/android/antivirus/af;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 279
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->c()V

    .line 283
    :cond_6
    invoke-static {}, Lcom/avira/android/antivirus/be;->a()V

    .line 286
    :cond_7
    iget-object v0, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "Update Cleanup Completed Successfully!"

    goto/16 :goto_1

    .line 244
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v1}, Lcom/avira/android/antivirus/Updater;->d(Lcom/avira/android/antivirus/Updater;)V

    .line 246
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v1}, Lcom/avira/android/antivirus/Updater;->e(Lcom/avira/android/antivirus/Updater;)V

    .line 248
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v1}, Lcom/avira/android/antivirus/Updater;->f(Lcom/avira/android/antivirus/Updater;)Z

    .line 250
    sget-object v1, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    invoke-static {v1}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    .line 252
    iget-boolean v1, p0, Lcom/avira/android/antivirus/bm;->b:Z

    if-eqz v1, :cond_9

    .line 254
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v2, "UPDTR"

    const-string v3, "Restarting Scan Engine due to Installation failure..."

    invoke-static {v1, v2, v3}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->b()V

    .line 263
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v1

    .line 266
    :try_start_6
    iget-object v2, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v1}, Lcom/avira/android/antivirus/Updater;->b(Lcom/avira/android/antivirus/Antivirus;)V
    :try_end_6
    .catch Ljava/io/InvalidObjectException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 277
    :goto_4
    invoke-static {}, Lcom/avira/android/antivirus/af;->e()Z

    move-result v1

    if-nez v1, :cond_8

    .line 279
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->c()V

    .line 283
    :cond_8
    invoke-static {}, Lcom/avira/android/antivirus/be;->a()V

    .line 286
    :cond_9
    iget-object v1, p0, Lcom/avira/android/antivirus/bm;->a:Lcom/avira/android/antivirus/Updater;

    const-string v2, "UPDTR"

    const-string v3, "Update Cleanup Completed Successfully!"

    invoke-static {v1, v2, v3}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 273
    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_4
.end method
