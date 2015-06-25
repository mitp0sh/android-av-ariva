.class public final enum Lcom/avira/android/blacklist/activities/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/blacklist/activities/u;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/blacklist/activities/u;

.field public static final enum CALL_LOG:Lcom/avira/android/blacklist/activities/u;

.field public static final enum PHONEBOOK:Lcom/avira/android/blacklist/activities/u;

.field public static final enum SMS_LOG:Lcom/avira/android/blacklist/activities/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/avira/android/blacklist/activities/u;

    const-string v1, "PHONEBOOK"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/blacklist/activities/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/activities/u;->PHONEBOOK:Lcom/avira/android/blacklist/activities/u;

    new-instance v0, Lcom/avira/android/blacklist/activities/u;

    const-string v1, "CALL_LOG"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/blacklist/activities/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/activities/u;->CALL_LOG:Lcom/avira/android/blacklist/activities/u;

    new-instance v0, Lcom/avira/android/blacklist/activities/u;

    const-string v1, "SMS_LOG"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/blacklist/activities/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/activities/u;->SMS_LOG:Lcom/avira/android/blacklist/activities/u;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avira/android/blacklist/activities/u;

    sget-object v1, Lcom/avira/android/blacklist/activities/u;->PHONEBOOK:Lcom/avira/android/blacklist/activities/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/blacklist/activities/u;->CALL_LOG:Lcom/avira/android/blacklist/activities/u;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/blacklist/activities/u;->SMS_LOG:Lcom/avira/android/blacklist/activities/u;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avira/android/blacklist/activities/u;->$VALUES:[Lcom/avira/android/blacklist/activities/u;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/activities/u;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/avira/android/blacklist/activities/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/activities/u;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/blacklist/activities/u;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/avira/android/blacklist/activities/u;->$VALUES:[Lcom/avira/android/blacklist/activities/u;

    invoke-virtual {v0}, [Lcom/avira/android/blacklist/activities/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/blacklist/activities/u;

    return-object v0
.end method
