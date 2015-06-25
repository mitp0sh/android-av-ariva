.class public Lcom/avira/android/database/gson/ScanResultsDatabaseItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATUS_ISSUES_FOUND:Ljava/lang/String; = "issuesFound"

.field public static final STATUS_NO_ISSUES:Ljava/lang/String; = "noIssues"


# instance fields
.field public applicationsScanned:I

.field public filesScanned:I

.field public hideIfEmpty:Z

.field public results:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;"
        }
    .end annotation
.end field

.field public scanEndTime:J

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
