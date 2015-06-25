.class public final enum Lcom/avira/android/antivirus/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/antivirus/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/antivirus/e;

.field public static final enum ON_ACCESS:Lcom/avira/android/antivirus/e;

.field public static final enum ON_DEMAND:Lcom/avira/android/antivirus/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    new-instance v0, Lcom/avira/android/antivirus/e;

    const-string v1, "ON_DEMAND"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/antivirus/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/antivirus/e;->ON_DEMAND:Lcom/avira/android/antivirus/e;

    new-instance v0, Lcom/avira/android/antivirus/e;

    const-string v1, "ON_ACCESS"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/antivirus/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/antivirus/e;->ON_ACCESS:Lcom/avira/android/antivirus/e;

    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avira/android/antivirus/e;

    sget-object v1, Lcom/avira/android/antivirus/e;->ON_DEMAND:Lcom/avira/android/antivirus/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/antivirus/e;->ON_ACCESS:Lcom/avira/android/antivirus/e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avira/android/antivirus/e;->$VALUES:[Lcom/avira/android/antivirus/e;

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
    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/antivirus/e;
    .locals 1

    .prologue
    .line 179
    const-class v0, Lcom/avira/android/antivirus/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/e;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/antivirus/e;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/avira/android/antivirus/e;->$VALUES:[Lcom/avira/android/antivirus/e;

    invoke-virtual {v0}, [Lcom/avira/android/antivirus/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/antivirus/e;

    return-object v0
.end method
