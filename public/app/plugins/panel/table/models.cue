// Copyright 2021 Grafana Labs
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package grafanaschema

import (
    ui "github.com/grafana/grafana/cue/ui:grafanaschema"
)

Family: {
    lineages: [
        [
            {
                PanelOptions: {
                    frameIndex: number | *0
                    showHeader: bool | *true
                    showFooter: bool | *false
                    sortBy?: [...ui.TableSortByFieldState]
                    footerFunctions?: string | *"sum"
                }
                PanelFieldConfig: {
                    width?: int
                    minWidth?: int
                    align?: string | *"auto"
                    displayMode?: string | *"auto" // TODO? TableCellDisplayMode
                    filterable?: bool
                }
            },
        ]
    ]
    migrations: []
}
