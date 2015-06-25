.class final synthetic Lcom/avira/applock/activities/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$avira$applock$activities$LockScreenActivity$LockScreenMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/avira/applock/activities/f;->values()[Lcom/avira/applock/activities/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avira/applock/activities/e;->$SwitchMap$com$avira$applock$activities$LockScreenActivity$LockScreenMode:[I

    :try_start_0
    sget-object v0, Lcom/avira/applock/activities/e;->$SwitchMap$com$avira$applock$activities$LockScreenActivity$LockScreenMode:[I

    sget-object v1, Lcom/avira/applock/activities/f;->ENTER_PIN:Lcom/avira/applock/activities/f;

    invoke-virtual {v1}, Lcom/avira/applock/activities/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/avira/applock/activities/e;->$SwitchMap$com$avira$applock$activities$LockScreenActivity$LockScreenMode:[I

    sget-object v1, Lcom/avira/applock/activities/f;->FORGOT_PIN:Lcom/avira/applock/activities/f;

    invoke-virtual {v1}, Lcom/avira/applock/activities/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
