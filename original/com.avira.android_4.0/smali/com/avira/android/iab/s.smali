.class public final Lcom/avira/android/iab/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/avira/android/iab/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/avira/android/iab/t;->NONE:Lcom/avira/android/iab/t;

    sput-object v0, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IABUtilities shouldRedirect "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    sget-object v1, Lcom/avira/android/iab/t;->ACCOUNT_REQUEST:Lcom/avira/android/iab/t;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    sget-object v1, Lcom/avira/android/iab/t;->SHOULD_OVERRIDE:Lcom/avira/android/iab/t;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IABUtilities shouldShowIAB "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    sget-object v1, Lcom/avira/android/iab/t;->SHOW_IAB:Lcom/avira/android/iab/t;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IABUtilitis reset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/avira/android/iab/t;->NONE:Lcom/avira/android/iab/t;

    sput-object v0, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    .line 46
    return-void
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IABUtilities markLoginPagePresenter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/avira/android/iab/t;->ACCOUNT_DISPLAY:Lcom/avira/android/iab/t;

    sput-object v0, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    .line 52
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IABUtilities markLoginPageSentRequest "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    sget-object v1, Lcom/avira/android/iab/t;->ACCOUNT_DISPLAY:Lcom/avira/android/iab/t;

    if-ne v0, v1, :cond_0

    .line 58
    sget-object v0, Lcom/avira/android/iab/t;->ACCOUNT_REQUEST:Lcom/avira/android/iab/t;

    sput-object v0, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    .line 59
    :cond_0
    return-void
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/avira/android/iab/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/avira/android/iab/t;->SHOW_IAB:Lcom/avira/android/iab/t;

    sput-object v0, Lcom/avira/android/iab/s;->a:Lcom/avira/android/iab/t;

    .line 67
    :cond_0
    return-void
.end method
