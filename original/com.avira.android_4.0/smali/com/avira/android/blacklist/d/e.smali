.class public final enum Lcom/avira/android/blacklist/d/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/blacklist/d/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/blacklist/d/e;

.field public static final enum CONTACT:Lcom/avira/android/blacklist/d/e;

.field public static final enum HISTORY:Lcom/avira/android/blacklist/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/avira/android/blacklist/d/e;

    const-string v1, "CONTACT"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/blacklist/d/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/d/e;->CONTACT:Lcom/avira/android/blacklist/d/e;

    new-instance v0, Lcom/avira/android/blacklist/d/e;

    const-string v1, "HISTORY"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/blacklist/d/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/d/e;->HISTORY:Lcom/avira/android/blacklist/d/e;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avira/android/blacklist/d/e;

    sget-object v1, Lcom/avira/android/blacklist/d/e;->CONTACT:Lcom/avira/android/blacklist/d/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/blacklist/d/e;->HISTORY:Lcom/avira/android/blacklist/d/e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avira/android/blacklist/d/e;->$VALUES:[Lcom/avira/android/blacklist/d/e;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/d/e;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/avira/android/blacklist/d/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/d/e;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/blacklist/d/e;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/avira/android/blacklist/d/e;->$VALUES:[Lcom/avira/android/blacklist/d/e;

    invoke-virtual {v0}, [Lcom/avira/android/blacklist/d/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/blacklist/d/e;

    return-object v0
.end method
