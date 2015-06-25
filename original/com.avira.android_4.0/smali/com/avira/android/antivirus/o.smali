.class final enum Lcom/avira/android/antivirus/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/antivirus/o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/antivirus/o;

.field public static final enum AV_RUN_STATE_DOWNLOADING:Lcom/avira/android/antivirus/o;

.field public static final enum AV_RUN_STATE_IDLE:Lcom/avira/android/antivirus/o;

.field public static final enum AV_RUN_STATE_SCANNING:Lcom/avira/android/antivirus/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/avira/android/antivirus/o;

    const-string v1, "AV_RUN_STATE_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/antivirus/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_IDLE:Lcom/avira/android/antivirus/o;

    .line 73
    new-instance v0, Lcom/avira/android/antivirus/o;

    const-string v1, "AV_RUN_STATE_DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/antivirus/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_DOWNLOADING:Lcom/avira/android/antivirus/o;

    .line 74
    new-instance v0, Lcom/avira/android/antivirus/o;

    const-string v1, "AV_RUN_STATE_SCANNING"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/antivirus/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_SCANNING:Lcom/avira/android/antivirus/o;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avira/android/antivirus/o;

    sget-object v1, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_IDLE:Lcom/avira/android/antivirus/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_DOWNLOADING:Lcom/avira/android/antivirus/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_SCANNING:Lcom/avira/android/antivirus/o;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avira/android/antivirus/o;->$VALUES:[Lcom/avira/android/antivirus/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/antivirus/o;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/avira/android/antivirus/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/o;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/antivirus/o;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/avira/android/antivirus/o;->$VALUES:[Lcom/avira/android/antivirus/o;

    invoke-virtual {v0}, [Lcom/avira/android/antivirus/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/antivirus/o;

    return-object v0
.end method
